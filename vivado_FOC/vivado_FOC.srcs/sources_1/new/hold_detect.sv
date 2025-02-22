
// 模块： hold_detect
// Type    : synthesizable
// Standard: SystemVerilog 2005 (IEEE1800-2005)
// 功能： 检测 in 从高电平变为低电平并保持 SAMPLE_DELAY 个时钟周期，在 sn_adc 信号上产生一个时钟周期的高电平。

module hold_detect #(
    parameter [15:0]  SAMPLE_DELAY = 16'd100  // 采样延迟，用于控制从高电平变为低电平后的保持周期
) (
    input  wire  rstn,     // 复位信号（低有效）
    input  wire  clk,      // 时钟信号
    input  wire  in,       // 输入信号，检测其从高到低的变化
    output reg   out       // 输出信号，表示检测到信号变化后的高电平脉冲
);

reg        latch1, latch2;  // 用于捕捉输入信号的寄存器
reg [15:0] cnt;             // 计数器，用于保持延迟周期

// 捕获输入信号的变化
always @ (posedge clk or negedge rstn)
    if (~rstn)
        {latch1, latch2} <= '1;  // 复位时，将 latch1 和 latch2 设置为 1
    else
        {latch1, latch2} <= {in, latch1};  // 将当前输入信号保存到 latch1，前一个信号保存到 latch2

// 状态更新和输出信号生成
always @ (posedge clk or negedge rstn)
    if (~rstn) begin
        out <= 1'b0;           // 复位时，输出信号为低电平
        cnt <= 16'd0;          // 复位时，计数器清零
    end else begin
        out <= 1'b0;           // 默认情况下输出信号为低电平
        if (latch1) begin      // 如果 latch1 为高电平，表示输入信号为高电平
            if (latch2) begin  // 如果 latch2 为高电平，表示输入信号保持高电平
                if (cnt != 16'd0)  // 如果计数器不为 0
                    cnt <= cnt - 16'd1;  // 计数器递减
                out <= cnt == 16'd1;  // 如果计数器为 1，则输出信号为高电平
            end else begin
                cnt <= SAMPLE_DELAY;  // 当检测到输入信号从高到低变化时，初始化计数器
            end
        end else begin
            cnt <= 16'd0;  // 输入信号为低电平时，清零计数器
        end
    end

endmodule
