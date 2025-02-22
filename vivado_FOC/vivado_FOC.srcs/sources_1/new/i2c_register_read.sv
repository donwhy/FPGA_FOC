
// 模块: i2c_register_read
// Type    : synthesizable
// Standard: SystemVerilog 2005 (IEEE1800-2005)
// 功能    : I2C 读控制器

module i2c_register_read #(
    parameter   [15:0] CLK_DIV       = 16'd16,        // 时钟分频值，控制 I2C 时钟速度
    parameter   [ 6:0] SLAVE_ADDR    = 7'h36,         // 从设备地址
    parameter   [ 7:0] REGISTER_ADDR = 8'h0E          // 目标寄存器地址
) (
    input  wire        rstn,            // 复位信号（低有效）
    input  wire        clk,             // 时钟信号
    output reg         scl,             // I2C 时钟信号
    inout              sda,             // I2C 数据线（双向）
    input  wire        start,           // 启动信号，开始读取过程
    output wire        ready,           // 模块是否准备好接受启动信号
    output reg         done,            // 数据读取完成标志
    output reg  [15:0] regout           // 读取的寄存器数据
);

localparam [15:0] CLK_DIV_PARSED = CLK_DIV > 16'd0 ? CLK_DIV - 16'd1 : 16'd0;

reg  sda_e, sda_o;                       // 用于控制 SDA 线的使能和输出

// SDA 双向控制，决定是输出数据还是高阻态
assign sda = sda_e ? sda_o : 1'bz;

reg        epoch;                         // 时钟周期标志
reg [15:0] clkcnt;                        // 时钟计数器
reg [ 7:0] cnt;                           // 计数器，用于状态机控制
reg [ 7:0] send_shift;                   // 用于发送数据的移位寄存器
reg [15:0] recv_shift;                   // 用于接收数据的移位寄存器

// 计时器逻辑，控制 I2C 时序
always @ (posedge clk or negedge rstn)
    if (~rstn) begin
        epoch <= 1'b0;
        clkcnt <= '0;
    end else begin
        if (clkcnt == CLK_DIV_PARSED) begin
            epoch <= 1'b1;
            clkcnt <= '0;
        end else begin
            epoch <= 1'b0;
            clkcnt <= clkcnt + 16'd1;
        end
    end

// ready 信号，指示模块是否准备好开始工作
assign ready = (cnt == '0);

always @ (posedge clk or negedge rstn)
    if (~rstn) begin
        {scl, sda_e, sda_o} <= '1';
        cnt <= '0';
        send_shift <= '0';
        recv_shift <= '0';
        regout <= '0';
        done <= 1'b0;
    end else begin
        if (ready) begin
            {scl, sda_e, sda_o} <= '1';
            if (start) begin
                cnt <= 8'd1;  // 启动时，设置计数器为 1
            end
        end else if (done) begin
            done <= 1'b0;  // 读取完成，清除 done 信号
            cnt <= 8'd0;
        end else if (epoch) begin
            cnt <= cnt + 8'd1;  // 时钟周期更新

            // 状态机根据计数值执行 I2C 读操作
            if (cnt < 8'd2) begin
                // 等待并保持高电平 SDA 和 SCL
            end else if (cnt < 8'd4) begin
                // 发送设备地址 (SLA+W)
                sda_o <= 1'b0;
                send_shift <= {SLAVE_ADDR, 1'b0};  // 7位从地址+写操作
            end else if (cnt < 8'd37) begin
                // 发送地址数据位
                scl <= cnt[1];
                if (cnt[1:0] == 2'b01) begin
                    {sda_o, send_shift} <= {send_shift, 1'b1};
                end
            end else if (cnt < 8'd40) begin
                // 发送寄存器地址
                send_shift <= REGISTER_ADDR;
                scl <= cnt[1];
                sda_e <= 1'b0;
            end else if (cnt < 8'd73) begin
                // 继续发送寄存器地址
                scl <= cnt[1];
                if (cnt[1:0] == 2'b01) begin
                    sda_e <= 1'b1;
                    {sda_o, send_shift} <= {send_shift, 1'b1};
                end
            end else if (cnt < 8'd77) begin
                // 等待信号稳定
                scl <= cnt[1];
                sda_e <= 1'b0;
            end else if (cnt == 8'd77) begin
                // 停止信号发送，准备读操作
                scl <= cnt[1];
                sda_e <= 1'b1;
                sda_o <= 1'b1;
            end else if (cnt < 8'd82) begin
                scl <= 1'b1;
            end else if (cnt < 8'd84) begin
                // 发送设备地址（SLA+R）
                scl <= 1'b1;
                sda_o <= 1'b0;
                send_shift <= {SLAVE_ADDR, 1'b1};  // 7位从地址+读操作
            end else if (cnt < 8'd117) begin
                // 继续发送数据位
                scl <= cnt[1];
                if (cnt[1:0] == 2'b01) begin
                    {sda_o, send_shift} <= {send_shift, 1'b1};
                end
            end else if (cnt < 8'd121) begin
                scl <= cnt[1];
                sda_e <= 1'b0;
            end else if (cnt < 8'd153) begin
                // 接收数据
                scl <= cnt[1];
                sda_e <= 1'b0;
                if (cnt[1:0] == 2'b11)
                    recv_shift <= {recv_shift[14:0], sda};  // 读取 SDA 数据
            end else if (cnt < 8'd157) begin
                scl <= cnt[1];
                sda_e <= 1'b1;
                sda_o <= 1'b0;
            end else if (cnt < 8'd189) begin
                // 继续接收数据
                scl <= cnt[1];
                sda_e <= 1'b0;
                if (cnt[1:0] == 2'b11)
                    recv_shift <= {recv_shift[14:0], sda};
            end else if (cnt < 8'd193) begin
                scl <= cnt[1];
                sda_e <= 1'b1;
                sda_o <= 1'b1;
            end else if (cnt < 8'd195) begin
                scl <= 1'b0;
                sda_o <= 1'b0;
            end else if (cnt < 8'd198) begin
                scl <= 1'b1;
                sda_o <= 1'b0;
            end else if (cnt < 8'd204) begin
                sda_o <= 1'b1;
                regout <= recv_shift;  // 读取的寄存器数据
            end else begin
                done <= 1'b1;  // 完成标志
            end
        end
    end

endmodule
