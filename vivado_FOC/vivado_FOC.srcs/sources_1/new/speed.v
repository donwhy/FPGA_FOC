module speed(
    input                     clk,            // 时钟周期，提供时钟信号
    input                     rst_n,          // 复位信号，低有效
    input  wire [11:0] phi,  // 角度，用于计算速度
    input  wire signed [15:0] n,    // 目标转速（以RPM表示）
    output signed [15:0] n_target,   // 目标转速输出
    output signed [15:0] n_now,      // 当前转速输出
    output signed [15:0] P_speed_o,  // PID控制的比例项输出
    output signed [15:0] I_speed_o,  // PID控制的积分项输出
    output wire signed [15:0] iq_aim // iq目标值（PID输出）
);

parameter [23:0] Kp = 24'd1000;	// 速度环 PID 控制算法的 P 参数
parameter [23:0] Ki = 24'd2;   // 速度环 PID 控制算法的 I 参数

parameter DIVCNT_MAX = 16'd150_000 - 1'b1; // 用于计数生成100Hz时钟的最大计数值


reg [15:0] divcnt;       // 计数器，用于时钟分频
reg clk_100hz;           // 100Hz的时钟信号，用于更新速度计算
reg [15:0] phi_last;     // 上一时刻的角度
reg [15:0] phi_now;      // 当前时刻的角度
reg signed [15:0] delta_phi;  // 当前角度与上一时刻角度之差（转角）
reg signed [15:0] delta_phi_abs; // 角度差的绝对值（未使用）
reg signed [31:0] speed_target; // 目标转速（基于目标n计算得出）
reg signed [15:0] speed_now;    // 当前转速（计算得出）
reg signed [31:0] iq;           // PID控制的输出，作为控制量
reg signed [31:0] P_speed;      // PID控制中的比例项
reg signed [31:0] I_speed;      // PID控制中的积分项

	

// 根据目标转速n计算speed_target（目标转速）
always @(*) begin
    if (!rst_n) begin
        speed_target <= 'd0;  // 如果没有复位，则目标转速为0
    end else begin
        speed_target <= 256 * n;  // 将目标转速n乘以256（单位转换），得到speed_target
    end
end

//对输入时钟clk计数
// 时钟分频计数器，每次计数达到DIVCNT_MAX时触发一次
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) divcnt <= 'b0;  // 复位时，计数器清零
    else if (divcnt < DIVCNT_MAX) divcnt <= divcnt + 1'b1;  // 计数器加1
    else divcnt <= 'b0;  // 达到最大值时重新清零
end

//产生100hz时钟使能信号，这个时钟使能信号每隔1k有一个高脉冲
// 生成100Hz时钟使能信号（clk_100hz）
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) clk_100hz <= 1'b0;  // 复位时，clk_100hz为0
    else if (divcnt == DIVCNT_MAX) clk_100hz <= !clk_100hz;  // 每当计数器达到最大值时反转clk_100hz
    else clk_100hz <= clk_100hz;  // 维持原状态
end


//更新角度信息，计算当前转速
// 每100Hz时更新当前角度（phi_now）和上一时刻角度（phi_last），计算角度差（delta_phi）
always @(posedge clk_100hz or negedge rst_n) begin
    if (!rst_n) begin
        phi_now <= 'd0;
        phi_last <= 'd0;
        delta_phi <= 'd0;  // 复位时，清零相关寄存器
    end else begin
        phi_now <= phi;  // 当前角度
        phi_last <= phi_now;  // 上一时刻的角度
        delta_phi <= phi_now - phi_last;  // 计算角度差
    end
end

// 根据角度差计算当前转速（speed_now），单位为RPM
always @(*) begin
    if (!rst_n) begin
        speed_now <= 0;  // 复位时，当前转速为0
    end else begin
        speed_now <= delta_phi * 15 * 25;  // 根据角度差计算转速
    end
end


//error与intager项计算
// 每100Hz时更新PID控制器的P项和I项，计算iq（PID控制输出）
always @(posedge clk_100hz or negedge rst_n) begin
    if (!rst_n) begin
        P_speed <= 'd0;  // 复位时，比例项清零
        I_speed <= 'd0;  // 复位时，积分项清零
        iq <= 'd0;        // 复位时，控制量iq清零
    end else begin
        P_speed <= speed_target - speed_now;  // 比例项：目标转速与当前转速之差
        I_speed <= I_speed + P_speed;  // 积分项：对比例项进行累加
        iq <= $signed((Kp * P_speed) + (Ki * I_speed));  // PID输出，控制量iq
    end
end

// 将计算得到的iq值截取高16位作为iq_aim
assign iq_aim = iq[31:16];  

// 将目标转速speed_target和当前转速speed_now截取低16位作为输出
assign n_target = speed_target[15:0];
assign n_now = speed_now[15:0];

// 将PID控制的比例项和积分项的结果截取并输出
assign P_speed_o = {P_speed[31], P_speed[14:0]};  // 截取比例项的低15位
assign I_speed_o = {I_speed[31], I_speed[14:0]};  // 截取积分项的低15位


//////////////////////////////////////////////////////
/*
always @(posedge clk_100hz or negedge rst_n) begin
    if (!rst_n) begin
        iq_see <= 'd0;  // 当复位信号有效时，iq_see清零
    end
    else if(iq_see < 'd100) iq_see <= iq_see + 1'b1;  // 如果iq_see小于100，则iq_see自增1
    else iq_see <= 'b0;  // 如果iq_see大于等于100，则iq_see重置为0
    else begin
        iq_see <= iq_real;  // 否则，将iq_real的值赋给iq_see（这部分代码在此注释中未启用）
    end 
end
*/
	 
endmodule  



