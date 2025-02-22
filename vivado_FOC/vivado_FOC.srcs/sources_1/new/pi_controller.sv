
// 模块： pi_controller
// Type    : synthesizable
// Standard: SystemVerilog 2005 (IEEE1800-2005)
// 功能： PI 控制器

module pi_controller #(
    parameter logic [23:0] Kp = 24'd25169,   // 比例系数 Kp，默认值为 25169
    parameter logic [23:0] Ki = 24'd2         // 积分系数 Ki，默认值为 2
) (
    input  wire               rstn,            // 复位信号 (低有效)
    input  wire               clk,             // 时钟信号
    input  wire               i_en,            // 启动控制信号
    input  wire signed [15:0] i_aim,           // 目标值
    input  wire signed [15:0] i_real,          // 实际值
    output reg                o_en,            // 控制器输出使能信号
    output wire signed [15:0] o_value          // 输出计算结果
);

parameter [23:0] Kp1 = 24'd243250;           // 比例系数 Kp1，用于计算
parameter [23:0] Ki1 = 24'd1;                // 积分系数 Ki1，用于计算
	
// 定义寄存器
reg               en1, en2, en3, en4;        // 中间使能信号，用于控制状态
reg signed [31:0] pdelta, idelta;           // pdelta: 比例误差，idelta: 积分误差
reg signed [31:0] kpdelta1, kpdelta;        // 临时存储比例部分的计算
reg signed [31:0] kidelta, kpidelta;        // 临时存储积分部分的计算
reg signed [31:0] value;                    // 控制器的输出值

// 输出值，取 `value` 的高 16 位作为输出
assign o_value = value[31:16];

// PI 控制器的核心逻辑
always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        // 复位时，清除所有的寄存器值
        pdelta <= 'd0;    // 比例误差
        idelta <= 'd0;    // 积分误差
        value <= 'd0;     // 控制器输出
    end
    else begin
        // 计算比例误差 pdelta 和积分误差 idelta
        pdelta <= i_aim - i_real;  // 比例误差：目标值减去实际值
        idelta <= idelta + pdelta; // 积分误差：累计误差
        // 使用比例和积分系数计算输出值
        value <= $signed((Kp1 * pdelta) + (Ki1 * idelta)); 
    end
end

endmodule

