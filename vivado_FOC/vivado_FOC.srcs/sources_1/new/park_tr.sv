
// 模块： park_tr
// Type    : synthesizable
// Standard: SystemVerilog 2005 (IEEE1800-2005)
// 功能： park 变换器

module park_tr(
    input  wire               rstn,            // 复位信号（低有效）
    input  wire               clk,             // 时钟信号
    input  wire        [11:0] psi,             // 角度值，用于计算坐标变换
    input  wire               i_en,            // 启动信号，控制 Park 变换是否开始
    input  wire signed [15:0] i_ialpha,        // α 轴电流（输入）
    input  wire signed [15:0] i_ibeta,         // β 轴电流（输入）
    output reg                o_en,            // 输出使能信号
    output signed [15:0] o_id, o_iq            // 输出 d 轴电流 (o_id) 和 q 轴电流 (o_iq)
);

reg  signed [15:0] o_id_now, o_iq_now;        // 当前 d 轴和 q 轴的输出电流
reg  signed [15:0] o_id_last, o_iq_last;      // 上一个周期的 d 轴和 q 轴的电流值

wire signed [27:0] o_id_low, o_iq_low;        // 用于低通滤波的中间结果

reg signed [15:0] sin_psi, cos_psi;           // 角度 psi 对应的正弦和余弦值（-16384~+16384 映射）

reg               en_s1;                      // 控制信号，用于传递启用信号
reg signed [31:0] alpha_cos, alpha_sin, beta_cos, beta_sin;  // 中间计算结果

// ide 和 iqe 是 Park 变换的计算结果，分别是 d 轴和 q 轴电流的理想值
wire signed[31:0] ide = alpha_cos + beta_sin;  // d 轴电流
wire signed[31:0] iqe = beta_cos - alpha_sin;  // q 轴电流

// sincos 模块计算正弦和余弦值
sincos sincos_i(
    .rstn        ( rstn       ),
    .clk         ( clk        ),
    .i_en        ( 1'b1       ),                // 总是使能 sincos 模块
    .i_theta     ( psi        ),                // 输入角度 psi
    .o_en        (            ),                // 不需要输出使能
    .o_sin       ( sin_psi    ),                // 输出 sin(psi)
    .o_cos       ( cos_psi    )                 // 输出 cos(psi)
);

// 用于计算 d-q 坐标系电流的逻辑
always @ (posedge clk or negedge rstn)
    if(~rstn) begin
        {en_s1, alpha_cos, alpha_sin, beta_cos, beta_sin} <= '0;  // 初始化所有寄存器
    end else begin
        en_s1 <= i_en;                                      // 将输入的使能信号传递给 en_s1
        alpha_cos <= i_ialpha * cos_psi;                    // 计算 alpha 轴的 cos 分量
        alpha_sin <= i_ialpha * sin_psi;                    // 计算 alpha 轴的 sin 分量
        beta_cos  <= i_ibeta  * cos_psi;                    // 计算 beta 轴的 cos 分量
        beta_sin  <= i_ibeta  * sin_psi;                    // 计算 beta 轴的 sin 分量
    end

// 输出的计算部分：计算出 Park 变换后的 d 轴和 q 轴电流值
always @ (posedge clk or negedge rstn)
    if(~rstn) begin
        {o_en, o_id_now, o_iq_now, o_id_last, o_iq_last} <= '0;  // 复位时，清零所有寄存器
    end else begin
        o_en <= en_s1;  // 根据输入的使能信号更新输出使能信号
        if(en_s1) begin
            o_id_now <= ide[31:16];  // 获取计算出的 d 轴电流并截取高 16 位作为输出
            o_iq_now <= iqe[31:16];  // 获取计算出的 q 轴电流并截取高 16 位作为输出
            o_id_last <= o_id;       // 保存上次计算出的 d 轴电流值
            o_iq_last <= o_iq;       // 保存上次计算出的 q 轴电流值
        end
    end

// 低通滤波器：通过将当前和上一个周期的输出电流加权平均，减少噪声
assign o_id_low = (26 * o_id_now) + (4070 * o_id_last);   // 对 d 轴电流进行低通滤波
assign o_iq_low = (26 * o_iq_now) + (4070 * o_iq_last);   // 对 q 轴电流进行低通滤波
assign o_id = o_id_low[27:12];   // 截取滤波后的 d 轴电流的高 16 位作为输出
assign o_iq = o_iq_low[27:12];   // 截取滤波后的 q 轴电流的高 16 位作为输出

endmodule

