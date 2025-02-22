// 模块：uart_monitor
// Type    : synthesizable
// Standard: SystemVerilog 2005 (IEEE1800-2005)
// 功能：UART发送器，格式为：9600,7,n,1，可以把 i_val0, i_val1, i_val2, i_val3 变成10进制格式，
// 并通过 UART 发送出去。

module uart_monitor #(
    // 参数：UART分频倍率
    // CLK_DIV 用于控制波特率, 如果时钟频率为 60MHz，CLK_DIV=6250，那么波特率为 60MHz/6250=9600
    parameter [15:0] CLK_DIV = 16'd6250
) (
    input  wire               rstn,        // 异步复位信号（低有效）
    input  wire               clk,         // 时钟信号
    input  wire               i_en,        // 启用信号，控制是否开始发送数据
    input  wire signed [15:0] i_val0,      // 输入数据 0
    input  wire signed [15:0] i_val1,      // 输入数据 1
    input  wire signed [15:0] i_val2,      // 输入数据 2
    input  wire signed [15:0] i_val3,      // 输入数据 3
    output reg                o_uart_tx    // UART TX 信号
);

initial o_uart_tx = 1'b1;  // 初始化 UART TX 信号为 1（空闲状态）

// 定义状态机状态
enum logic [2:0] {IDLE, SELECT, WAIT, PARSING, SENDING} stat;

// 辅助信号
wire       tx_rdy;          // UART 发送就绪信号
reg        tx_en;           // UART 启用信号
reg  [7:0] tx_data;        // 当前待发送的字节数据

// 十进制转字符串的辅助信号
reg               itoa_en;    // 是否开始转换
reg signed [15:0] itoa_val;  // 当前待转换的数值
reg               itoa_oen;   // 是否输出转换结果
reg        [ 7:0] itoa_str [6]; // 存储转换后的字符数组（最多 6 个字符）

// 计数器
reg        [ 2:0] vcnt;     // 选择要处理的数据的计数器
reg        [ 2:0] cnt;      // 发送字符的计数器
reg        [ 7:0] eov;      // 行尾字符（空格或换行符）
wire       [ 7:0] s_str[8]; // 存储 ASCII 字符的数组

// 将 itoa_str 映射到 s_str 中
assign s_str[0] = itoa_str[0];
assign s_str[1] = itoa_str[1];
assign s_str[2] = itoa_str[2];
assign s_str[3] = itoa_str[3];
assign s_str[4] = itoa_str[4];
assign s_str[5] = itoa_str[5];
assign s_str[6] = 8'h20;  // 空格字符
assign s_str[7] = eov;    // 行尾字符（换行或空格）

// 发送控制：根据当前状态确定是否启用 UART 发送，并准备数据
always_comb begin
    tx_en = 1'b0;    // 默认不启用 UART
    tx_data = '0;    // 默认无数据
    if(stat == SENDING) begin
        tx_en = 1'b1;        // 如果处于发送状态，启用 UART 发送
        tx_data = s_str[cnt]; // 发送当前字符
    end
end

// 状态机和数据转换控制
always @ (posedge clk or negedge rstn)
    if(~rstn) begin
        stat <= IDLE;      // 复位时进入 IDLE 状态
        itoa_en <= 1'b0;   // 复位十进制转换使能信号
        itoa_val <= '0;    // 复位待转换数值
        vcnt <= '0;        // 复位选择计数器
        cnt <= '0;         // 复位发送计数器
        eov <= 8'h20;      // 复位行尾字符为 '空格'
    end else begin
        itoa_en <= 1'b0;   // 默认不启用十进制转换
        case(stat)
            // IDLE 状态：等待 i_en 激活开始处理数据
            IDLE: if(i_en)
                stat <= SELECT;  // 进入 SELECT 状态，选择数据

            // SELECT 状态：根据 vcnt 选择要处理的数据
            SELECT: begin
                if(vcnt == 3'd0) begin
                    vcnt <= vcnt + 3'd1;
                    stat <= WAIT;
                    itoa_en <= 1'b1;  // 启用十进制转换
                    itoa_val <= i_val0; // 选择 i_val0
                    eov <= 8'h20;      // 行尾字符为空格
                end else if(vcnt == 3'd1) begin
                    vcnt <= vcnt + 3'd1;
                    stat <= WAIT;
                    itoa_en <= 1'b1;  // 启用十进制转换
                    itoa_val <= i_val1; // 选择 i_val1
                    eov <= 8'h20;      // 行尾字符为空格
                end else if(vcnt == 3'd2) begin
                    vcnt <= vcnt + 3'd1;
                    stat <= WAIT;
                    itoa_en <= 1'b1;  // 启用十进制转换
                    itoa_val <= i_val2; // 选择 i_val2
                    eov <= 8'h20;      // 行尾字符为空格
                end else if(vcnt == 3'd3) begin
                    vcnt <= vcnt + 3'd1;
                    stat <= WAIT;
                    itoa_en <= 1'b1;  // 启用十进制转换
                    itoa_val <= i_val3; // 选择 i_val3
                    eov <= 8'h0A;      // 行尾字符为换行符
                end else begin
                    vcnt <= 3'd0;    // 完成所有数据后重置 vcnt
                    stat <= IDLE;    // 返回 IDLE 状态
                    eov <= 8'h20;    // 行尾字符为空格
                end
            end

            // WAIT 状态：等待十进制转换完成
            WAIT:
                stat <= PARSING;

            // PARSING 状态：完成转换并准备好数据
            PARSING: if(itoa_oen)
                stat <= SENDING;  // 转换完成后进入发送状态

            // SENDING 状态：通过 UART 发送数据
            SENDING: if(tx_rdy) begin
                cnt <= cnt + 3'd1;   // 发送下一个字符
                if(cnt == 3'd7)
                    stat <= SELECT;  // 如果已发送完所有字符，回到 SELECT 状态
            end
        endcase
    end

// 十进制转换为 ASCII 字符串的过程 (itoa)
reg [2:0] itoa_cnt;  // 转换计数器
reg itoa_sign;       // 是否为负数
reg itoa_zero;       // 是否已经转换为 0
reg [15:0] itoa_abs; // 数值的绝对值
reg [3:0] itoa_rem;  // 余数（十进制数字）


// 处理十进制到字符串的转换
always @ (posedge clk or negedge rstn)
    if(~rstn) begin
        itoa_cnt <= 3'd0;            // 重置计数器
        {itoa_sign, itoa_abs, itoa_zero, itoa_rem} <= '0;// 重置标志和数值
        itoa_oen <= 1'b0;            // 复位输出使能
        itoa_str <= '{6{'0}};        // 复位字符串数组
    end else begin
        if(itoa_cnt==3'd0) begin
            if(itoa_en) begin
                itoa_cnt <= 3'd1;   // 启动转换
            end
            itoa_sign <= itoa_val[15];  // 记录符号位
            itoa_abs <= itoa_val[15] ? $unsigned(-itoa_val) : $unsigned(itoa_val); // 计算绝对值
        end else begin
            itoa_cnt <= itoa_cnt + 3'd1;  // 递增计数器
            itoa_abs <= itoa_abs / 16'd10; // 除以 10 获取十进制位
            itoa_rem <= (4)'(itoa_abs % 16'd10);  // 计算余数（当前位数字）
            itoa_zero <= itoa_abs==16'd0;   // 判断是否为 0
            if (itoa_cnt > 3'd1) begin
                // 右移字符数组，确保新的数字能够正确填充数组
                itoa_str[5] <= itoa_str[4];
                itoa_str[4] <= itoa_str[3];
                itoa_str[3] <= itoa_str[2];
                itoa_str[2] <= itoa_str[1];
                itoa_str[1] <= itoa_str[0];

                if (itoa_cnt > 3'd2 && itoa_zero) begin
                    // 如果已经是 0，并且之前没有显式添加负号，则填充空格或负号
                    itoa_str[0] <= itoa_sign ? 8'h2D : 8'h20; // 如果是负数，加上 '-' 否则加上空格
                    itoa_sign <= 1'b0;   // 一旦符号被处理，设置符号为正
                end else begin
                    // 否则，将当前位数字转为 ASCII 字符并存入 itoa_str[0]
                    itoa_str[0] <= {4'h3, itoa_rem}; // 通过余数计算 ASCII 字符
                end
            end
        end
        itoa_oen <= itoa_cnt == 3'd7; // 完成数字转换后，输出有效信号
    end


// UART 发送部分
reg [15:0] ccnt;     // 用于生成波特率时钟的计数器
reg [3:0] tx_cnt;    // UART 发送字节计数器
reg [12:1] tx_shift; // 发送字节的位移寄存器（用于逐位发送）

// UART 发送控制：根据计数器确定是否发送下一个数据位
assign tx_rdy = (tx_cnt == 4'd0);  // 如果 tx_cnt 为 0，则表示可以准备发送新的字节

always @ (posedge clk or negedge rstn)
    if (~rstn) begin
        o_uart_tx <= 1'b1;        // 初始时，UART 输出信号为高电平（空闲状态）
        ccnt <= '0;               // 清零波特率时钟计数器
        tx_cnt <= '0;             // 清零发送字节计数器
        tx_shift <= '1;           // 初始时，tx_shift 高电平（空闲位）
    end else begin
        if (tx_cnt == 4'd0) begin
            o_uart_tx <= 1'b1;    // 当计数器为 0 时，发送空闲位（高电平）
            ccnt <= '0;           // 重置波特率计数器
            if (tx_en) begin
                // 如果启用 UART 发送（tx_en 为 1），则准备发送数据
                tx_cnt <= 4'd12;  // 发送 12 位数据（1 位起始位 + 8 位数据位 + 1 位停止位 + 1 位空闲位）
                tx_shift <= {2'b10, tx_data[0], tx_data[1], tx_data[2], tx_data[3], tx_data[4], tx_data[5], tx_data[6], tx_data[7], 2'b11};
                // 发送数据位包括起始位（`10`），数据位（tx_data），和停止位（`11`）
            end
        end else begin
            // 逐位发送数据
            o_uart_tx <= tx_shift[tx_cnt];  // 将 tx_shift 中的当前位输出到 UART TX
            if (ccnt + 16'd1 < CLK_DIV) begin
                ccnt <= ccnt + 16'd1;  // 如果计时还没达到波特率分频器，则继续计数
            end else begin
                ccnt <= '0;          // 如果计时完成，重置计时器
                tx_cnt <= tx_cnt - 4'd1; // 减少发送字节计数器，逐位发送
            end
        end
    end

endmodule




