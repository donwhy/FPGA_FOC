
// clark_tr 
// Type    : synthesizable
// Standard: SystemVerilog 2005 (IEEE1800-2005)
// 功能： clark 变换

module clark_tr(
    input  wire               rstn,               // 复位信号（低有效）
    input  wire               clk,                // 时钟信号
    input  wire               i_en,               // 启用信号
    input  wire signed [15:0] i_ia, i_ib, i_ic,   // 输入的三相电流信号 (范围 -8191 ~ 8191)
    output reg                o_en,               // 输出使能信号
    output reg  signed [15:0] o_ialpha, o_ibeta   // 输出的α轴和β轴电流信号
);


// registers for pipeline stage 1
//定义了用于流水线（Pipeline）两个阶段的寄存器。流水线设计用于提高数据处理的效率和速度，
//特别是在需要进行多次计算的数字电路中。每个阶段的寄存器存储中间计算结果，使得每个阶段可以独立工作，减少等待时间。
reg               en_s1;                    // 启用信号，控制流水线阶段1是否有效
reg signed [15:0] ax2_s1, bmc_s1, bpc_s1;  // 存储计算中间结果的寄存器


// registers for pipeline stage 2
reg               en_s2;                    // 启用信号，控制流水线阶段2是否有效
reg signed [15:0] ialpha_s2, i_beta1_s2, i_beta2_s2, i_beta3_s2; // 存储计算中间结果的寄存器


// pipeline stage 1
// 管道阶段1
always @ (posedge clk or negedge rstn)
    if (~rstn) begin
        {en_s1, ax2_s1, bmc_s1, bpc_s1} <= '0;
    end else begin
        en_s1 <= i_en;                // 将输入使能信号传递给管道阶段1
        ax2_s1 <= i_ia << 1;          // i_ia 左移一位，即 ax2_s1 = 2 * i_ia
        bmc_s1 <= i_ib - i_ic;        // bmc_s1 = i_ib - i_ic
        bpc_s1 <= i_ib + i_ic;        // bpc_s1 = i_ib + i_ic
    end


// pipeline stage 2
// 管道阶段2
always @ (posedge clk or negedge rstn)
    if (~rstn) begin
        {en_s2, ialpha_s2, i_beta1_s2, i_beta2_s2, i_beta3_s2} <= '0;
    end else begin
        en_s2 <= en_s1;                        // 将阶段1的使能信号传递到阶段2
        ialpha_s2 <= ax2_s1 - bpc_s1;          // ialpha_s2 = ax2_s1 - bpc_s1
        // 计算 β 轴的中间值
        i_beta1_s2 <= bmc_s1 +
                      $signed({{ 1{bmc_s1[15]}}, bmc_s1[15: 1]}) +
                      $signed({{ 3{bmc_s1[15]}}, bmc_s1[15: 3]});
        i_beta2_s2 <= $signed({{ 4{bmc_s1[15]}}, bmc_s1[15: 4]}) +
                      $signed({{ 5{bmc_s1[15]}}, bmc_s1[15: 5]}) +
                      $signed({{ 7{bmc_s1[15]}}, bmc_s1[15: 7]});
        i_beta3_s2 <= $signed({{ 8{bmc_s1[15]}}, bmc_s1[15: 8]}) +
                      $signed({{10{bmc_s1[15]}}, bmc_s1[15:10]}) +
                      $signed({{11{bmc_s1[15]}}, bmc_s1[15:11]});
    end


// pipeline stage output
// 管道阶段输出
always @ (posedge clk or negedge rstn)
    if (~rstn) begin
        {o_en, o_ialpha, o_ibeta} <= 1'b0;
    end else begin
        o_en <= en_s2;                          // 将阶段2的使能信号传递到输出
        if (en_s2) begin
            o_ialpha <= ialpha_s2;             // 输出 α 轴电流信号
            o_ibeta <= i_beta1_s2 + i_beta2_s2 + i_beta3_s2;  // 输出 β 轴电流信号
        end
    end


endmodule
