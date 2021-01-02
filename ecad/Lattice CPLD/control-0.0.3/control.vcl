[DEVICE]

Family = M4A5;
PartType = M4A5-256/128;
Package = 208PQFP;
PartNumber = M4A5-256/128-10YI;
Speed = -10;
Operating_condition = IND;
EN_Segment = NO;
Pin_MC_1to1 = NO;
Voltage = 5.0;

[REVISION]

RCS = "$Revision: 1.2 $";
Parent = m4a5.lci;
SDS_file = m4a5.sds;
Design = control.tt4;
Rev = 0.01;
DATE = 7/15/06;
TIME = 19:26:32;
Type = TT2;
Pre_Fit_Time = 1;
Source_Format = Schematic_VHDL;

[IGNORE ASSIGNMENTS]

Pin_Assignments = NO;
Pin_Keep_Block = NO;
Pin_Keep_Segment = NO;
Group_Assignments = NO;
Macrocell_Assignments = NO;
Macrocell_Keep_Block = NO;
Macrocell_Keep_Segment = NO;
Pin_Reservation = NO;
Timing_Constraints = NO;
Block_Reservation = NO;
Segment_Reservation = NO;
Ignore_Source_Location = NO;
Ignore_Source_Optimization = NO;
Ignore_Source_Timing = NO;

[CLEAR ASSIGNMENTS]

Pin_Assignments = NO;
Pin_Keep_Block = NO;
Pin_Keep_Segment = NO;
Group_Assignments = NO;
Macrocell_Assignments = NO;
Macrocell_Keep_Block = NO;
Macrocell_Keep_Segment = NO;
Pin_Reservation = NO;
Timing_Constraints = NO;
Block_Reservation = NO;
Segment_Reservation = NO;
Ignore_Source_Location = NO;
Ignore_Source_Optimization = NO;
Ignore_Source_Timing = NO;

[BACKANNOTATE NETLIST]

Netlist = VHDL;
Delay_File = SDF;
Generic_VCC = ;
Generic_GND = ;

[BACKANNOTATE ASSIGNMENTS]

Pin_Assignment = NO;
Pin_Block = NO;
Pin_Macrocell_Block = NO;
Routing = NO;

[GLOBAL PROJECT OPTIMIZATION]

Balanced_Partitioning = YES;
Spread_Placement = YES;
Max_Pin_Percent = 100;
Max_Macrocell_Percent = 100;
Max_Inter_Seg_Percent = 100;
Max_Seg_In_Percent = 100;
Max_Blk_In_Percent = 100;

[FITTER REPORT FORMAT]

Fitter_Options = YES;
Pinout_Diagram = NO;
Pinout_Listing = YES;
Detailed_Block_Segment_Summary = YES;
Input_Signal_List = YES;
Output_Signal_List = YES;
Bidir_Signal_List = YES;
Node_Signal_List = YES;
Signal_Fanout_List = YES;
Block_Segment_Fanin_List = YES;
Prefit_Eqn = YES;
Postfit_Eqn = YES;
Page_Break = YES;

[OPTIMIZATION OPTIONS]

Logic_Reduction = YES;
Max_PTerm_Split = 16;
Max_PTerm_Collapse = 16;
XOR_Synthesis = YES;
Node_Collapse = Yes;
DT_Synthesis = Yes;

[FITTER GLOBAL OPTIONS]

Run_Time = 0;
Set_Reset_Dont_Care = NO;
In_Reg_Optimize = YES;
Clock_Optimize = NO;
Conf_Unused_IOs = OUT_LOW;

[POWER]
Powerlevel = Low, High;
Default = High;
Type = GLB;

[HARDWARE DEVICE OPTIONS]
Zero_Hold_Time = No;
Signature_Word = 0;
Pull_up = No;
Out_Slew_Rate = FAST, SLOW, 0;
Device_max_fanin = 33;
Device_max_pterms = 20;
Usercode_Format = Hex;

[PIN RESERVATIONS]
layer = OFF;

[LOCATION ASSIGNMENT]

Layer = OFF
A00 = OUTPUT,*,12,-;
TB_20ms = OUTPUT,*,0,-;
TB_2ms = OUTPUT,*,4,-;
TB_200us = OUTPUT,*,3,-;
TB_20us = OUTPUT,*,14,-;
TB_2us = OUTPUT,*,1,-;
A11 = OUTPUT,*,8,-;
A10 = OUTPUT,*,11,-;
A09 = OUTPUT,*,8,-;
A08 = OUTPUT,*,7,-;
A07 = OUTPUT,*,9,-;
A06 = OUTPUT,*,15,-;
A05 = OUTPUT,*,6,-;
A04 = OUTPUT,*,15,-;
A03 = OUTPUT,*,6,-;
A02 = OUTPUT,*,13,-;
A01 = OUTPUT,*,12,-;
TB_50ms = OUTPUT,*,0,-;
TB_10ms = OUTPUT,*,5,-;
TB_5ms = OUTPUT,*,4,-;
TB_1ms = OUTPUT,*,5,-;
TB_500us = OUTPUT,*,3,-;
TB_100us = OUTPUT,*,3,-;
TB_50us = OUTPUT,*,14,-;
TB_10us = OUTPUT,*,1,-;
TB_5us = OUTPUT,*,1,-;
TB_1us = OUTPUT,*,5,-;
C8 = OUTPUT,*,7,-;
WRAD = OUTPUT,*,2,-;
READ = OUTPUT,*,13,-;
READY = OUTPUT,*,11,-;
CE_RAM = OUTPUT,*,15,-;
N_57 = NODE,*,9,-;
RN_C8 = NODE,*,7,-;
N_49 = NODE,*,12,-;
RN_A11 = NODE,*,8,-;
RN_TB_20ms = NODE,*,0,-;
RN_TB_200us = NODE,*,3,-;
RN_TB_20us = NODE,*,14,-;
RN_TB_2us = NODE,*,1,-;
RN_A10 = NODE,*,11,-;
RN_A09 = NODE,*,8,-;
RN_A08 = NODE,*,7,-;
RN_A07 = NODE,*,9,-;
RN_A06 = NODE,*,15,-;
RN_A05 = NODE,*,6,-;
RN_A04 = NODE,*,15,-;
RN_A03 = NODE,*,6,-;
RN_A02 = NODE,*,13,-;
RN_A01 = NODE,*,12,-;
RN_TB_10ms = NODE,*,5,-;
RN_TB_5ms = NODE,*,4,-;
RN_TB_1ms = NODE,*,5,-;
RN_TB_500us = NODE,*,3,-;
RN_TB_50us = NODE,*,14,-;
RN_TB_10us = NODE,*,1,-;
RN_TB_1us = NODE,*,5,-;
H0_OUTPUT_QC = NODE,*,10,-;
G0_OUTPUT_QC = NODE,*,2,-;
F0_OUTPUT_QC = NODE,*,10,-;
D0_OUTPUT_QC = NODE,*,2,-;
RN_A00 = NODE,*,12,-;
RN_TB_2ms = NODE,*,4,-;
RN_TB_50ms = NODE,*,0,-;
RN_TB_100us = NODE,*,3,-;
RN_TB_5us = NODE,*,1,-;
E0_OUTPUT_QC = NODE,*,4,-;
RN_WRAD = NODE,*,2,-;
