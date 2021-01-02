MODEL
MODEL_VERSION "1.0";
DESIGN "control";
DATE "Sun Jul 09 22:08:42 2006";
VENDOR "Lattice Semiconductor Corporation";
PROGRAM "STAMP Model Generator";

/* port name and type */
INPUT CLK;
INPUT CLR;
INPUT R2;
INPUT R3;
INPUT S1;
INPUT S2;
OUTPUT A00;
OUTPUT A01;
OUTPUT A02;
OUTPUT A03;
OUTPUT A04;
OUTPUT A05;
OUTPUT A06;
OUTPUT A07;
OUTPUT A08;
OUTPUT A09;
OUTPUT A10;
OUTPUT A11;
OUTPUT C8;
OUTPUT CE_RAM;
OUTPUT READ;
OUTPUT READY;
OUTPUT TB_1ms;
OUTPUT TB_1us;
OUTPUT TB_2ms;
OUTPUT TB_2us;
OUTPUT TB_5ms;
OUTPUT TB_5us;
OUTPUT TB_10ms;
OUTPUT TB_10us;
OUTPUT TB_20ms;
OUTPUT TB_20us;
OUTPUT TB_50ms;
OUTPUT TB_50us;
OUTPUT TB_100us;
OUTPUT TB_200us;
OUTPUT TB_500us;
OUTPUT WRAD;

/* timing arc definitions */
S2_CE_RAM_delay: DELAY S2 CE_RAM;
CLK_TB_1ms_delay: DELAY CLK TB_1ms;
CLK_TB_1us_delay: DELAY CLK TB_1us;
CLK_TB_2ms_delay: DELAY CLK TB_2ms;
CLK_TB_2us_delay: DELAY CLK TB_2us;
CLK_TB_5ms_delay: DELAY CLK TB_5ms;
CLK_TB_5us_delay: DELAY CLK TB_5us;
CLK_TB_10ms_delay: DELAY CLK TB_10ms;
CLK_TB_10us_delay: DELAY CLK TB_10us;
CLK_TB_20ms_delay: DELAY CLK TB_20ms;
CLK_TB_20us_delay: DELAY CLK TB_20us;
CLK_TB_50ms_delay: DELAY CLK TB_50ms;
CLK_TB_50us_delay: DELAY CLK TB_50us;
CLK_TB_100us_delay: DELAY CLK TB_100us;
CLK_TB_200us_delay: DELAY CLK TB_200us;
CLK_TB_500us_delay: DELAY CLK TB_500us;
CLK_WRAD_delay: DELAY CLK WRAD;
R3_C8_delay: DELAY R3 C8;

/* timing check arc definitions */
CLK_CLK_setup: SETUP(POSEDGE) CLK CLK;
CLK_CLK_hold: HOLD(POSEDGE) CLK CLK;

ENDMODEL
