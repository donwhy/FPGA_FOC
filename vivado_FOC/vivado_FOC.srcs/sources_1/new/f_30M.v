module f_30M(
    input clk_120m,   // 输入时钟信号 120MHz
    input rst_n,      // 复位信号（低有效）
    output reg clk,   // 输出时钟信号（30MHz）
    output reg done   // 输出完成信号
);

localparam DIVCNT_MAX = 4'd2 - 1'b1; // 4分频计数器最大值，即2-1=1，表示计数器计数到1

reg [15:0] divcnt;  // 16位的分频计数器，用于实现时钟分频功能

///////////////////////////////////////////
// 对输入时钟 clk_120m 做 4 分频的计数
always @(posedge clk_120m or negedge rst_n) begin
    if (!rst_n) 
        divcnt <= 'b0;  // 复位时，分频计数器清零
    else if (divcnt < DIVCNT_MAX) 
        divcnt <= divcnt + 1'b1;  // 如果分频计数器还未达到最大值，则加1
    else 
        divcnt <= 'b0;  // 当计数器达到最大值时，重新计数
end

//////////////////////////////////////////
// 产生时钟使能信号，这个时钟使能信号每隔4个时钟周期有一个高脉冲
always @(posedge clk_120m or negedge rst_n) begin
    if (!rst_n) 
        clk <= 1'b0;  // 复位时，输出时钟为低电平
    else if (divcnt == DIVCNT_MAX) 
        clk <= 1'b1;  // 如果分频计数器计数到最大值，则输出时钟为高电平
    else 
        clk <= 1'b0;  // 否则时钟为低电平
end

// 产生完成信号 done
always @(posedge clk_120m or negedge rst_n) begin
    if (!rst_n) 
        done <= 1'b0;  // 复位时，完成信号为低电平
    else if (clk == 1'b1) 
        done <= 1'b1;  // 如果时钟为高电平，则表示操作完成，设置 done 为高电平
end

endmodule
