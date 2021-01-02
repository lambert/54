MODEL
MODEL_VERSION "1.0";
DESIGN "control";
DATE "Sun Jul 09 16:17:30 2006";
VENDOR "Lattice Semiconductor Corporation";
PROGRAM "STAMP Model Generator";

/* port name and type */
INPUT CLK;
INPUT CLR;
OUTPUT O_A;
OUTPUT O_B;
OUTPUT O_C;
OUTPUT O_D;
OUTPUT O_E;
OUTPUT O_F;
OUTPUT O_G;
OUTPUT O_H;
OUTPUT O_J;
OUTPUT O_K;
OUTPUT O_L;
OUTPUT O_M;
OUTPUT O_N;
OUTPUT O_P;
OUTPUT O_Q;

/* timing arc definitions */
CLK_O_A_delay: DELAY CLK O_A;
CLK_O_B_delay: DELAY CLK O_B;
CLK_O_C_delay: DELAY CLK O_C;
CLK_O_D_delay: DELAY CLK O_D;
CLK_O_E_delay: DELAY CLK O_E;
CLK_O_F_delay: DELAY CLK O_F;
CLK_O_G_delay: DELAY CLK O_G;
CLK_O_H_delay: DELAY CLK O_H;
CLK_O_J_delay: DELAY CLK O_J;
CLK_O_K_delay: DELAY CLK O_K;
CLK_O_L_delay: DELAY CLK O_L;
CLK_O_M_delay: DELAY CLK O_M;
CLK_O_N_delay: DELAY CLK O_N;
CLK_O_P_delay: DELAY CLK O_P;
CLK_O_Q_delay: DELAY CLK O_Q;

/* timing check arc definitions */
CLK_CLK_setup: SETUP(POSEDGE) CLK CLK;
CLK_CLK_hold: HOLD(POSEDGE) CLK CLK;

ENDMODEL
