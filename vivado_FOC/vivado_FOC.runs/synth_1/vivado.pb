
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:032

00:00:132	
483.8982	
181.238Z17-268h px� 
c
Command: %s
53*	vivadotcl22
0synth_design -top fpga_top -part xc7z020clg400-2Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7z020Z17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7z020Z17-349h px� 
D
Loading part %s157*device2
xc7z020clg400-2Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
9160Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:10 . Memory (MB): peak = 1344.680 ; gain = 438.605
h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2
Kp12
pi_controller2V
RD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/pi_controller.sv2
208@Z8-11065h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2
Ki12
pi_controller2V
RD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/pi_controller.sv2
218@Z8-11065h px� 
�
synthesizing module '%s'%s4497*oasys2

fpga_top2
 2Q
MD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/fpga_top.sv2
148@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
f_30M2
 2M
ID:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/f_30M.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
f_30M2
 2
02
12M
ID:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/f_30M.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
i2c_register_read2
 2Z
VD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/i2c_register_read.sv2
78@Z8-6157h px� 
M
%s
*synth25
3	Parameter CLK_DIV bound to: 16'b0000000000001010 
h p
x
� 
F
%s
*synth2.
,	Parameter SLAVE_ADDR bound to: 7'b0110110 
h p
x
� 
J
%s
*synth22
0	Parameter REGISTER_ADDR bound to: 8'b00001110 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
i2c_register_read2
 2
02
12Z
VD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/i2c_register_read.sv2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

adc_ad79282
 2S
OD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/adc_ad7928.sv2
98@Z8-6157h px� 
>
%s
*synth2&
$	Parameter CH_CNT bound to: 3'b010 
h p
x
� 
;
%s
*synth2#
!	Parameter CH0 bound to: 3'b001 
h p
x
� 
;
%s
*synth2#
!	Parameter CH1 bound to: 3'b010 
h p
x
� 
;
%s
*synth2#
!	Parameter CH2 bound to: 3'b011 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

adc_ad79282
 2
02
12S
OD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/adc_ad7928.sv2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
foc_top2
 2P
LD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/foc_top.sv2
98@Z8-6157h px� 
U
%s
*synth2=
;	Parameter INIT_CYCLES bound to: 15000000 - type: integer 
h p
x
� 
?
%s
*synth2'
%	Parameter ANGLE_INV bound to: 1'b0 
h p
x
� 
F
%s
*synth2.
,	Parameter POLE_PAIR bound to: 8'b00001110 
h p
x
� 
E
%s
*synth2-
+	Parameter MAX_AMP bound to: 9'b110000000 
h p
x
� 
J
%s
*synth22
0	Parameter SAMPLE_DELAY bound to: 9'b001111000 
h p
x
� 
P
%s
*synth28
6	Parameter Kp bound to: 24'b000000000001010000110001 
h p
x
� 
P
%s
*synth28
6	Parameter Ki bound to: 24'b000000000000000000000011 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2

clark_tr2
 2Q
MD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/clark_tr.sv2
78@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

clark_tr2
 2
02
12Q
MD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/clark_tr.sv2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
park_tr2
 2P
LD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/park_tr.sv2
78@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
sincos2
 2O
KD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/sincos.sv2
98@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2O
KD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/sincos.sv2
368@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sincos2
 2
02
12O
KD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/sincos.sv2
98@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
park_tr2
 2
02
12P
LD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/park_tr.sv2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pi_controller2
 2V
RD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/pi_controller.sv2
78@Z8-6157h px� 
P
%s
*synth28
6	Parameter Kp bound to: 24'b000000000001010000110001 
h p
x
� 
P
%s
*synth28
6	Parameter Ki bound to: 24'b000000000000000000000011 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pi_controller2
 2
02
12V
RD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/pi_controller.sv2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
cartesian2polar2
 2X
TD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/cartesian2polar.sv2
78@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cartesian2polar2
 2
02
12X
TD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/cartesian2polar.sv2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
svpwm2
 2N
JD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/svpwm.sv2
118@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
svpwm2
 2
02
12N
JD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/svpwm.sv2
118@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
hold_detect2
 2T
PD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/hold_detect.sv2
78@Z8-6157h px� 
R
%s
*synth2:
8	Parameter SAMPLE_DELAY bound to: 16'b0000000001111000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hold_detect2
 2
02
12T
PD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/hold_detect.sv2
78@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
foc_top2
 2
02
12P
LD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/foc_top.sv2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_monitor2
 2U
QD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/uart_monitor.sv2
78@Z8-6157h px� 
M
%s
*synth25
3	Parameter CLK_DIV bound to: 16'b0001100001101010 
h p
x
� 
�
-case statement is not full and has no default155*oasys2U
QD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/uart_monitor.sv2
758@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_monitor2
 2
02
12U
QD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/uart_monitor.sv2
78@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

fpga_top2
 2
02
12Q
MD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/fpga_top.sv2
148@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
o_en2
pi_controller2V
RD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/pi_controller.sv2
168@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2	
cnt_reg2Q
MD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/sources_1/new/fpga_top.sv2
1698@Z8-6014h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_en2
pi_controllerZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_en2
pi_controllerZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:14 . Memory (MB): peak = 1504.023 ; gain = 597.949
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:14 . Memory (MB): peak = 1504.023 ; gain = 597.949
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:14 . Memory (MB): peak = 1504.023 ; gain = 597.949
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0482

1504.0232
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2R
ND:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/constrs_1/new/fpga_top.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2R
ND:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/constrs_1/new/fpga_top.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2P
ND:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.srcs/constrs_1/new/fpga_top.xdc2
.Xil/fpga_top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1609.5592
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0212

1609.5592
0.000Z17-268h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:32 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7z020clg400-2
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:32 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:32 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
i
3inferred FSM for state register '%s' in module '%s'802*oasys2

stat_reg2
sincosZ8-802h px� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2

stat_reg2
uart_monitorZ8-802h px� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2

vcnt_reg2
uart_monitorZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                      S1 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                      S2 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                      S3 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                      S4 |                              100 |                              100
h p
x
� 
y
%s
*synth2a
_                      S5 |                              101 |                              101
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

stat_reg2

sequential2
sincosZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                 iSTATE3 |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              100 |                              100
h p
x
� 

%s
*synth2
*
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

vcnt_reg2

sequential2
uart_monitorZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                              000 |                              000
h p
x
� 
y
%s
*synth2a
_                  SELECT |                              001 |                              001
h p
x
� 
y
%s
*synth2a
_                    WAIT |                              010 |                              010
h p
x
� 
y
%s
*synth2a
_                 PARSING |                              011 |                              011
h p
x
� 
y
%s
*synth2a
_                 SENDING |                              100 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

stat_reg2

sequential2
uart_monitorZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:36 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   28 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   24 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 10    
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit       Adders := 6     
h p
x
� 
F
%s
*synth2.
,	   4 Input   16 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 9     
h p
x
� 
F
%s
*synth2.
,	   3 Input   12 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 9     
h p
x
� 
H
%s
*synth20
.	               28 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 31    
h p
x
� 
H
%s
*synth20
.	               15 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 24    
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 7     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 8     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 50    
h p
x
� 
-
%s
*synth2
+---Multipliers : 
h p
x
� 
F
%s
*synth2.
,	              18x32  Multipliers := 2     
h p
x
� 
&
%s
*synth2
+---ROMs : 
h p
x
� 
>
%s
*synth2&
$	                    ROMs := 4     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   28 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 14    
h p
x
� 
F
%s
*synth2.
,	   4 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   6 Input   12 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   12 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   6 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 123   
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 13    
h p
x
� 
F
%s
*synth2.
,	   9 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
X
%s
*synth2@
>DSP Report: Generating DSP beta_sin0, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator beta_sin0 is absorbed into DSP beta_sin0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: Generating DSP alpha_cos0, operation Mode is: A*B.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator alpha_cos0 is absorbed into DSP alpha_cos0.
h p
x
� 
_
%s
*synth2G
EDSP Report: Generating DSP o_id_low0, operation Mode is: A*(B:0x1a).
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_id_low0 is absorbed into DSP o_id_low0.
h p
x
� 
d
%s
*synth2L
JDSP Report: Generating DSP o_id_low, operation Mode is: PCIN+A*(B:0xfe6).
h p
x
� 
W
%s
*synth2?
=DSP Report: operator o_id_low is absorbed into DSP o_id_low.
h p
x
� 
X
%s
*synth2@
>DSP Report: operator o_id_low0 is absorbed into DSP o_id_low.
h p
x
� 
Y
%s
*synth2A
?DSP Report: Generating DSP alpha_sin0, operation Mode is: A*B.
h p
x
� 
[
%s
*synth2C
ADSP Report: operator alpha_sin0 is absorbed into DSP alpha_sin0.
h p
x
� 
X
%s
*synth2@
>DSP Report: Generating DSP beta_cos0, operation Mode is: A*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator beta_cos0 is absorbed into DSP beta_cos0.
h p
x
� 
_
%s
*synth2G
EDSP Report: Generating DSP o_iq_low0, operation Mode is: A*(B:0x1a).
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_iq_low0 is absorbed into DSP o_iq_low0.
h p
x
� 
d
%s
*synth2L
JDSP Report: Generating DSP o_iq_low, operation Mode is: PCIN+A*(B:0xfe6).
h p
x
� 
W
%s
*synth2?
=DSP Report: operator o_iq_low is absorbed into DSP o_iq_low.
h p
x
� 
X
%s
*synth2@
>DSP Report: operator o_iq_low0 is absorbed into DSP o_iq_low.
h p
x
� 
_
%s
*synth2G
EDSP Report: Generating DSP value1, operation Mode is: (A:0x3b632)*B.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator value1 is absorbed into DSP value1.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator value1 is absorbed into DSP value1.
h p
x
� 
j
%s
*synth2R
PDSP Report: Generating DSP value1, operation Mode is: (PCIN>>17)+(A:0x3b632)*B.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator value1 is absorbed into DSP value1.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator value1 is absorbed into DSP value1.
h p
x
� 
_
%s
*synth2G
EDSP Report: Generating DSP value1, operation Mode is: (A:0x3b632)*B.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator value1 is absorbed into DSP value1.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator value1 is absorbed into DSP value1.
h p
x
� 
i
%s
*synth2Q
ODSP Report: Generating DSP value1, operation Mode is: (PCIN>>17)+(A:0x3632)*B.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator value1 is absorbed into DSP value1.
h p
x
� 
S
%s
*synth2;
9DSP Report: operator value1 is absorbed into DSP value1.
h p
x
� 
R
%s
*synth2:
8DSP Report: Generating DSP mul, operation Mode is: A*B.
h p
x
� 
M
%s
*synth25
3DSP Report: operator mul is absorbed into DSP mul.
h p
x
� 
T
%s
*synth2<
:DSP Report: Generating DSP mul_y, operation Mode is: A*B.
h p
x
� 
Q
%s
*synth29
7DSP Report: operator mul_y is absorbed into DSP mul_y.
h p
x
� 
Y
%s
*synth2A
?DSP Report: Generating DSP ia0, operation Mode is: A*(B:0x18).
h p
x
� 
M
%s
*synth25
3DSP Report: operator ia0 is absorbed into DSP ia0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: Generating DSP ib0, operation Mode is: A*(B:0x18).
h p
x
� 
M
%s
*synth25
3DSP Report: operator ib0 is absorbed into DSP ib0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: Generating DSP ic0, operation Mode is: A*(B:0x18).
h p
x
� 
M
%s
*synth25
3DSP Report: operator ic0 is absorbed into DSP ic0.
h p
x
� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
o_en2
pi_controllerZ8-7129h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_en2
pi_controllerZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_ia[15]2

clark_trZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:52 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
T
%s
*synth2<
: Sort Area is  value1_9 : 0 0 : 1825 3671 : Used 1 time 0
h p
x
� 
T
%s
*synth2<
: Sort Area is  value1_9 : 0 1 : 1846 3671 : Used 1 time 0
h p
x
� 
T
%s
*synth2<
: Sort Area is  value1_c : 0 0 : 1825 2654 : Used 1 time 0
h p
x
� 
S
%s
*synth2;
9 Sort Area is  value1_c : 0 1 : 829 2654 : Used 1 time 0
h p
x
� 
X
%s
*synth2@
> Sort Area is  alpha_cos0_0 : 0 0 : 1937 1937 : Used 1 time 0
h p
x
� 
X
%s
*synth2@
> Sort Area is  alpha_sin0_7 : 0 0 : 1937 1937 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  beta_cos0_6 : 0 0 : 1937 1937 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  beta_sin0_2 : 0 0 : 1937 1937 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  o_id_low0_3 : 0 0 : 271 1173 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  o_id_low0_3 : 0 1 : 902 1173 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  o_iq_low0_8 : 0 0 : 271 1173 : Used 1 time 0
h p
x
� 
V
%s
*synth2>
< Sort Area is  o_iq_low0_8 : 0 1 : 902 1173 : Used 1 time 0
h p
x
� 
O
%s
*synth27
5 Sort Area is  mul_e : 0 0 : 901 901 : Used 1 time 0
h p
x
� 
R
%s
*synth2:
8 Sort Area is  mul_y_10 : 0 0 : 701 701 : Used 1 time 0
h p
x
� 
N
%s
*synth26
4 Sort Area is  ia0_12 : 0 0 : 78 78 : Used 1 time 0
h p
x
� 
N
%s
*synth26
4 Sort Area is  ib0_14 : 0 0 : 78 78 : Used 1 time 0
h p
x
� 
N
%s
*synth26
4 Sort Area is  ic0_15 : 0 0 : 78 78 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
c
%s*synth2K
I+----------------+--------------------+---------------+----------------+
h px� 
d
%s*synth2L
J|Module Name     | RTL Object         | Depth x Width | Implemented As | 
h px� 
c
%s*synth2K
I+----------------+--------------------+---------------+----------------+
h px� 
d
%s*synth2L
J|park_tr         | sincos_i/rom_y_reg | 1024x15       | Block RAM      | 
h px� 
d
%s*synth2L
J|cartesian2polar | rom_a_reg          | 4096x9        | Block RAM      | 
h px� 
d
%s*synth2L
J|cartesian2polar | rom_theta_reg      | 4096x9        | Block RAM      | 
h px� 
d
%s*synth2L
J|svpwm           | x2_reg             | 1024x9        | Block RAM      | 
h px� 
d
%s*synth2L
J+----------------+--------------------+---------------+----------------+

h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
�+----------------+--------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name     | DSP Mapping              | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
�+----------------+--------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|park_tr         | A*B                      | 16     | 16     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|park_tr         | A*B                      | 16     | 16     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|park_tr         | A*(B:0x1a)               | 16     | 6      | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|park_tr         | PCIN+A*(B:0xfe6)         | 16     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|park_tr         | A*B                      | 16     | 16     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|park_tr         | A*B                      | 16     | 16     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|park_tr         | A*(B:0x1a)               | 16     | 6      | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|park_tr         | PCIN+A*(B:0xfe6)         | 16     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|pi_controller   | (A:0x3b632)*B            | 19     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|pi_controller   | (PCIN>>17)+(A:0x3b632)*B | 19     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|pi_controller   | (A:0x3b632)*B            | 19     | 18     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|pi_controller   | (PCIN>>17)+(A:0x3632)*B  | 15     | 15     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|cartesian2polar | A*B                      | 16     | 9      | -      | -      | 25     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|svpwm           | A*B                      | 12     | 9      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|foc_top         | A*(B:0x18)               | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|foc_top         | A*(B:0x18)               | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|foc_top         | A*(B:0x18)               | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�+----------------+--------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:01:05 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:01:06 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2(
&foc_top_i/park_tr_i/sincos_i/rom_y_reg2
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2'
%foc_top_i/cartesian2polar_i/rom_a_reg2
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2+
)foc_top_i/cartesian2polar_i/rom_theta_reg2
BlockZ8-7052h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:01:07 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:31 ; elapsed = 00:01:14 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:31 ; elapsed = 00:01:14 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:31 ; elapsed = 00:01:14 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:31 ; elapsed = 00:01:14 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:31 ; elapsed = 00:01:14 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:31 ; elapsed = 00:01:14 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|fpga_top    | foc_top_i/svpwm_i/rom_sy_reg | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2�
�+----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|Module Name     | DSP Mapping  | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2�
�+----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|foc_top         | (A*B)'       | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|foc_top         | (A*B)'       | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|foc_top         | (A*B)'       | 16     | 5      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|cartesian2polar | A*B          | 16     | 9      | -      | -      | 25     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|park_tr         | (A*B)'       | 30     | 18     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|park_tr         | (A*B)'       | 30     | 18     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|park_tr         | A*B          | 30     | 5      | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|park_tr         | PCIN+A*B     | 30     | 12     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|park_tr         | (A*B)'       | 30     | 18     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|park_tr         | (A*B)'       | 30     | 18     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|park_tr         | A*B          | 30     | 5      | -      | -      | 22     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|park_tr         | PCIN+A*B     | 30     | 12     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|pi_controller   | A*B          | 18     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|pi_controller   | PCIN>>17+A*B | 14     | 15     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|pi_controller   | A*B          | 18     | 17     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|pi_controller   | PCIN>>17+A*B | 14     | 15     | -      | -      | 15     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|svpwm           | (A*B)'       | 12     | 9      | -      | -      | 21     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�+----------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     2|
h px� 
4
%s*synth2
|2     |CARRY4   |   192|
h px� 
4
%s*synth2
|3     |DSP48E1  |    17|
h px� 
4
%s*synth2
|5     |LUT1     |   185|
h px� 
4
%s*synth2
|6     |LUT2     |   483|
h px� 
4
%s*synth2
|7     |LUT3     |   285|
h px� 
4
%s*synth2
|8     |LUT4     |   269|
h px� 
4
%s*synth2
|9     |LUT5     |   205|
h px� 
4
%s*synth2
|10    |LUT6     |   223|
h px� 
4
%s*synth2
|11    |MUXF7    |     4|
h px� 
4
%s*synth2
|12    |RAMB18E1 |     2|
h px� 
4
%s*synth2
|14    |RAMB36E1 |     2|
h px� 
4
%s*synth2
|16    |SRL16E   |     1|
h px� 
4
%s*synth2
|17    |FDCE     |  1096|
h px� 
4
%s*synth2
|18    |FDPE     |    33|
h px� 
4
%s*synth2
|19    |FDRE     |    24|
h px� 
4
%s*synth2
|20    |IBUF     |     3|
h px� 
4
%s*synth2
|21    |IOBUF    |     1|
h px� 
4
%s*synth2
|22    |OBUF     |    10|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:31 ; elapsed = 00:01:14 . Memory (MB): peak = 1609.559 ; gain = 703.484
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 4 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:01:10 . Memory (MB): peak = 1609.559 ; gain = 597.949
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:01:14 . Memory (MB): peak = 1609.559 ; gain = 703.484
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0432

1609.5592
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
218Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1609.5592
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2Y
W  A total of 1 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

2c61d3d9Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522
102
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:352

00:01:282

1609.5592

1125.660Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0122

1609.5592
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2J
HD:/Desktop/FPGA/FPGA_FOC/vivado_FOC/vivado_FOC.runs/synth_1/fpga_top.dcpZ17-1381h px� 
�
%s4*runtcl2h
fExecuting : report_utilization -file fpga_top_utilization_synth.rpt -pb fpga_top_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat Feb 22 00:41:33 2025Z17-206h px� 


End Record