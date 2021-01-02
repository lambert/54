-- VHDL netlist-file
library mach;
use mach.components.all;

library ieee;
use ieee.std_logic_1164.all;
entity control is
  port (
    S2 : in std_logic;
    CE_RAM : out std_logic;
    READY : out std_logic;
    READ : out std_logic;
    CLR : in std_logic;
    CLK : in std_logic;
    R2 : in std_logic;
    R3 : in std_logic;
    S1 : in std_logic;
    WRAD : out std_logic;
    C8 : out std_logic;
    TB_1us : out std_logic;
    TB_2us : out std_logic;
    TB_5us : out std_logic;
    TB_10us : out std_logic;
    TB_20us : out std_logic;
    TB_50us : out std_logic;
    TB_100us : out std_logic;
    TB_200us : out std_logic;
    TB_500us : out std_logic;
    TB_1ms : out std_logic;
    TB_2ms : out std_logic;
    TB_5ms : out std_logic;
    TB_10ms : out std_logic;
    TB_20ms : out std_logic;
    TB_50ms : out std_logic;
    A00 : out std_logic;
    A01 : out std_logic;
    A02 : out std_logic;
    A03 : out std_logic;
    A04 : out std_logic;
    A05 : out std_logic;
    A06 : out std_logic;
    A07 : out std_logic;
    A08 : out std_logic;
    A09 : out std_logic;
    A10 : out std_logic;
    A11 : out std_logic
  );
end control;

architecture NetList of control is

  signal S2PIN : std_logic;
  signal CE_RAMCOM : std_logic;
  signal READYQ : std_logic;
  signal READQ : std_logic;
  signal CLRPIN : std_logic;
  signal CLKPIN : std_logic;
  signal R2PIN : std_logic;
  signal R3PIN : std_logic;
  signal S1PIN : std_logic;
  signal WRADQ : std_logic;
  signal C8Q : std_logic;
  signal TB_1usQ : std_logic;
  signal TB_2usQ : std_logic;
  signal TB_5usQ : std_logic;
  signal TB_10usQ : std_logic;
  signal TB_20usQ : std_logic;
  signal TB_50usQ : std_logic;
  signal TB_100usQ : std_logic;
  signal TB_200usQ : std_logic;
  signal TB_500usQ : std_logic;
  signal TB_1msQ : std_logic;
  signal TB_2msQ : std_logic;
  signal TB_5msQ : std_logic;
  signal TB_10msQ : std_logic;
  signal TB_20msQ : std_logic;
  signal TB_50msQ : std_logic;
  signal A00Q : std_logic;
  signal A01Q : std_logic;
  signal A02Q : std_logic;
  signal A03Q : std_logic;
  signal A04Q : std_logic;
  signal A05Q : std_logic;
  signal A06Q : std_logic;
  signal A07Q : std_logic;
  signal A08Q : std_logic;
  signal A09Q : std_logic;
  signal A10Q : std_logic;
  signal A11Q : std_logic;
  signal N_57Q : std_logic;
  signal N_49Q : std_logic;
  signal D0_OUTPUT_QCQ : std_logic;
  signal E0_OUTPUT_QCQ : std_logic;
  signal F0_OUTPUT_QCQ : std_logic;
  signal G0_OUTPUT_QCQ : std_logic;
  signal H0_OUTPUT_QCQ : std_logic;
  signal WRAD_D : std_logic;
  signal TB_1us_D : std_logic;
  signal TB_1us_C : std_logic;
  signal TB_2us_D : std_logic;
  signal TB_2us_C : std_logic;
  signal TB_5us_D : std_logic;
  signal TB_5us_C : std_logic;
  signal TB_10us_D : std_logic;
  signal TB_10us_C : std_logic;
  signal TB_20us_D : std_logic;
  signal TB_20us_C : std_logic;
  signal TB_50us_D : std_logic;
  signal TB_50us_C : std_logic;
  signal TB_100us_D : std_logic;
  signal TB_100us_C : std_logic;
  signal TB_200us_D : std_logic;
  signal TB_200us_C : std_logic;
  signal TB_500us_D : std_logic;
  signal TB_500us_C : std_logic;
  signal TB_1ms_D : std_logic;
  signal TB_1ms_C : std_logic;
  signal TB_2ms_D : std_logic;
  signal TB_2ms_C : std_logic;
  signal TB_5ms_D : std_logic;
  signal TB_5ms_C : std_logic;
  signal TB_10ms_D : std_logic;
  signal TB_10ms_C : std_logic;
  signal TB_20ms_D : std_logic;
  signal TB_20ms_C : std_logic;
  signal TB_50ms_D : std_logic;
  signal TB_50ms_C : std_logic;
  signal A00_D : std_logic;
  signal T_0 : std_logic;
  signal A00_AR : std_logic;
  signal A01_D : std_logic;
  signal T_1 : std_logic;
  signal A01_AR : std_logic;
  signal A02_D : std_logic;
  signal T_2 : std_logic;
  signal A02_AR : std_logic;
  signal A03_D : std_logic;
  signal T_3 : std_logic;
  signal A03_AR : std_logic;
  signal A04_D : std_logic;
  signal T_4 : std_logic;
  signal A04_AR : std_logic;
  signal A05_D : std_logic;
  signal T_5 : std_logic;
  signal A05_AR : std_logic;
  signal A06_D : std_logic;
  signal T_6 : std_logic;
  signal A06_AR : std_logic;
  signal A07_D : std_logic;
  signal T_7 : std_logic;
  signal A07_AR : std_logic;
  signal A08_D : std_logic;
  signal T_8 : std_logic;
  signal A08_AR : std_logic;
  signal A09_D : std_logic;
  signal T_9 : std_logic;
  signal A09_AR : std_logic;
  signal A10_D : std_logic;
  signal T_10 : std_logic;
  signal A10_AR : std_logic;
  signal A11_D : std_logic;
  signal T_11 : std_logic;
  signal A11_AR : std_logic;
  signal T_12 : std_logic;
  signal D0_OUTPUT_QC_D : std_logic;
  signal D0_OUTPUT_QC_C : std_logic;
  signal E0_OUTPUT_QC_D : std_logic;
  signal E0_OUTPUT_QC_C : std_logic;
  signal F0_OUTPUT_QC_D : std_logic;
  signal F0_OUTPUT_QC_C : std_logic;
  signal G0_OUTPUT_QC_D : std_logic;
  signal G0_OUTPUT_QC_C : std_logic;
  signal H0_OUTPUT_QC_D : std_logic;
  signal H0_OUTPUT_QC_C : std_logic;
  signal A00_C : std_logic;
  signal A01_C : std_logic;
  signal A02_C : std_logic;
  signal A03_C : std_logic;
  signal A04_C : std_logic;
  signal A05_C : std_logic;
  signal A06_C : std_logic;
  signal A07_C : std_logic;
  signal A08_C : std_logic;
  signal A09_C : std_logic;
  signal A10_C : std_logic;
  signal A11_C : std_logic;
  signal N_57_D : std_logic;
  signal T_13 : std_logic;
  signal T_14 : std_logic;
  signal T_15 : std_logic;
  signal T_16 : std_logic;
  signal T_17 : std_logic;
  signal T_18 : std_logic;
  signal T_19 : std_logic;
  signal T_20 : std_logic;
  signal T_21 : std_logic;
  signal T_22 : std_logic;
  signal T_23 : std_logic;
  signal T_24 : std_logic;
  signal T_25 : std_logic;
  signal T_26 : std_logic;
  signal T_27 : std_logic;
  signal T_28 : std_logic;
  signal T_29 : std_logic;
  signal T_30 : std_logic;
  signal T_31 : std_logic;
  signal T_32 : std_logic;
  signal T_33 : std_logic;
  signal T_34 : std_logic;
  signal T_35 : std_logic;
  signal T_36 : std_logic;
  signal T_37 : std_logic;
  signal T_38 : std_logic;
  signal T_39 : std_logic;
  signal T_40 : std_logic;
  signal VCC_net : std_logic;
  signal GND_net : std_logic;
  signal GATE_A01_D_Y : std_logic;
  signal GATE_A02_D_Y : std_logic;
  signal GATE_A03_D_Y : std_logic;
  signal GATE_A04_D_Y : std_logic;
  signal GATE_A05_D_Y : std_logic;
  signal GATE_A06_D_Y : std_logic;
  signal GATE_A07_D_Y : std_logic;
  signal GATE_A08_D_Y : std_logic;
  signal GATE_A09_D_Y : std_logic;
  signal GATE_A10_D_Y : std_logic;
  signal GATE_A11_D_Y : std_logic;
  signal GATE_T_13_A : std_logic;
  signal GATE_T_13_B : std_logic;
  signal GATE_T_14_A : std_logic;
  signal GATE_T_15_A : std_logic;
  signal GATE_T_16_A : std_logic;
  signal GATE_T_17_A : std_logic;
  signal GATE_T_18_A : std_logic;
  signal GATE_T_18_B : std_logic;
  signal GATE_T_20_A : std_logic;
  signal GATE_T_21_A : std_logic;
  signal GATE_T_22_A : std_logic;
  signal GATE_T_23_A : std_logic;
  signal GATE_T_23_B : std_logic;
  signal GATE_T_25_A : std_logic;
  signal GATE_T_26_A : std_logic;
  signal GATE_T_27_A : std_logic;
  signal GATE_T_28_A : std_logic;
  signal GATE_T_28_B : std_logic;
  signal GATE_T_30_A : std_logic;
  signal GATE_T_31_A : std_logic;
  signal GATE_T_32_A : std_logic;
  signal GATE_T_33_A : std_logic;
  signal GATE_T_33_B : std_logic;
  signal GATE_T_35_A : std_logic;
  signal GATE_T_36_A : std_logic;
  signal GATE_T_37_A : std_logic;
  signal GATE_T_38_A : std_logic;
  signal GATE_T_38_B : std_logic;
  signal GATE_T_40_A : std_logic;

begin
  VCC_I_I_1:   VCC port map ( X=>VCC_net );
  GND_I_I_1:   GND port map ( X=>GND_net );
  IN_S2_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>S2PIN, 
            I0=>S2 );
  OUT_CE_RAM_I_1:   OBUF port map ( O=>CE_RAM, 
            I0=>CE_RAMCOM );
  OUT_READY_I_1:   OBUF port map ( O=>READY, 
            I0=>READYQ );
  OUT_READ_I_1:   OBUF port map ( O=>READ, 
            I0=>READQ );
  IN_CLR_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>CLRPIN, 
            I0=>CLR );
  IN_CLK_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>CLKPIN, 
            I0=>CLK );
  IN_R2_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>R2PIN, 
            I0=>R2 );
  IN_R3_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>R3PIN, 
            I0=>R3 );
  IN_S1_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>S1PIN, 
            I0=>S1 );
  OUT_WRAD_I_1:   OBUF port map ( O=>WRAD, 
            I0=>WRADQ );
  OUT_C8_I_1:   OBUF port map ( O=>C8, 
            I0=>C8Q );
  OUT_TB_1us_I_1:   OBUF port map ( O=>TB_1us, 
            I0=>TB_1usQ );
  OUT_TB_2us_I_1:   OBUF port map ( O=>TB_2us, 
            I0=>TB_2usQ );
  OUT_TB_5us_I_1:   OBUF port map ( O=>TB_5us, 
            I0=>TB_5usQ );
  OUT_TB_10us_I_1:   OBUF port map ( O=>TB_10us, 
            I0=>TB_10usQ );
  OUT_TB_20us_I_1:   OBUF port map ( O=>TB_20us, 
            I0=>TB_20usQ );
  OUT_TB_50us_I_1:   OBUF port map ( O=>TB_50us, 
            I0=>TB_50usQ );
  OUT_TB_100us_I_1:   OBUF port map ( O=>TB_100us, 
            I0=>TB_100usQ );
  OUT_TB_200us_I_1:   OBUF port map ( O=>TB_200us, 
            I0=>TB_200usQ );
  OUT_TB_500us_I_1:   OBUF port map ( O=>TB_500us, 
            I0=>TB_500usQ );
  OUT_TB_1ms_I_1:   OBUF port map ( O=>TB_1ms, 
            I0=>TB_1msQ );
  OUT_TB_2ms_I_1:   OBUF port map ( O=>TB_2ms, 
            I0=>TB_2msQ );
  OUT_TB_5ms_I_1:   OBUF port map ( O=>TB_5ms, 
            I0=>TB_5msQ );
  OUT_TB_10ms_I_1:   OBUF port map ( O=>TB_10ms, 
            I0=>TB_10msQ );
  OUT_TB_20ms_I_1:   OBUF port map ( O=>TB_20ms, 
            I0=>TB_20msQ );
  OUT_TB_50ms_I_1:   OBUF port map ( O=>TB_50ms, 
            I0=>TB_50msQ );
  OUT_A00_I_1:   OBUF port map ( O=>A00, 
            I0=>A00Q );
  OUT_A01_I_1:   OBUF port map ( O=>A01, 
            I0=>A01Q );
  OUT_A02_I_1:   OBUF port map ( O=>A02, 
            I0=>A02Q );
  OUT_A03_I_1:   OBUF port map ( O=>A03, 
            I0=>A03Q );
  OUT_A04_I_1:   OBUF port map ( O=>A04, 
            I0=>A04Q );
  OUT_A05_I_1:   OBUF port map ( O=>A05, 
            I0=>A05Q );
  OUT_A06_I_1:   OBUF port map ( O=>A06, 
            I0=>A06Q );
  OUT_A07_I_1:   OBUF port map ( O=>A07, 
            I0=>A07Q );
  OUT_A08_I_1:   OBUF port map ( O=>A08, 
            I0=>A08Q );
  OUT_A09_I_1:   OBUF port map ( O=>A09, 
            I0=>A09Q );
  OUT_A10_I_1:   OBUF port map ( O=>A10, 
            I0=>A10Q );
  OUT_A11_I_1:   OBUF port map ( O=>A11, 
            I0=>A11Q );
  FF_READY_I_1:   DFFSH port map ( Q=>READYQ, 
            S=>R2PIN, 
            CLK=>A11Q, 
            D=>GND_net );
  FF_READ_I_1:   DFFRH port map ( Q=>READQ, 
            R=>R2PIN, 
            CLK=>A11Q, 
            D=>VCC_net );
  FF_WRAD_I_1:   DFFRH port map ( Q=>WRADQ, 
            R=>VCC_net, 
            CLK=>CLKPIN, 
            D=>WRAD_D );
  FF_C8_I_1:   DFFRH port map ( Q=>C8Q, 
            R=>S1PIN, 
            CLK=>R3PIN, 
            D=>VCC_net );
  FF_TB_1us_I_1:   DFFRH port map ( Q=>TB_1usQ, 
            R=>CLRPIN, 
            CLK=>TB_1us_C, 
            D=>TB_1us_D );
  FF_TB_2us_I_1:   DFFRH port map ( Q=>TB_2usQ, 
            R=>CLRPIN, 
            CLK=>TB_2us_C, 
            D=>TB_2us_D );
  FF_TB_5us_I_1:   DFFRH port map ( Q=>TB_5usQ, 
            R=>CLRPIN, 
            CLK=>TB_5us_C, 
            D=>TB_5us_D );
  FF_TB_10us_I_1:   DFFRH port map ( Q=>TB_10usQ, 
            R=>CLRPIN, 
            CLK=>TB_10us_C, 
            D=>TB_10us_D );
  FF_TB_20us_I_1:   DFFRH port map ( Q=>TB_20usQ, 
            R=>CLRPIN, 
            CLK=>TB_20us_C, 
            D=>TB_20us_D );
  FF_TB_50us_I_1:   DFFRH port map ( Q=>TB_50usQ, 
            R=>CLRPIN, 
            CLK=>TB_50us_C, 
            D=>TB_50us_D );
  FF_TB_100us_I_1:   DFFRH port map ( Q=>TB_100usQ, 
            R=>CLRPIN, 
            CLK=>TB_100us_C, 
            D=>TB_100us_D );
  FF_TB_200us_I_1:   DFFRH port map ( Q=>TB_200usQ, 
            R=>CLRPIN, 
            CLK=>TB_200us_C, 
            D=>TB_200us_D );
  FF_TB_500us_I_1:   DFFRH port map ( Q=>TB_500usQ, 
            R=>CLRPIN, 
            CLK=>TB_500us_C, 
            D=>TB_500us_D );
  FF_TB_1ms_I_1:   DFFRH port map ( Q=>TB_1msQ, 
            R=>CLRPIN, 
            CLK=>TB_1ms_C, 
            D=>TB_1ms_D );
  FF_TB_2ms_I_1:   DFFRH port map ( Q=>TB_2msQ, 
            R=>CLRPIN, 
            CLK=>TB_2ms_C, 
            D=>TB_2ms_D );
  FF_TB_5ms_I_1:   DFFRH port map ( Q=>TB_5msQ, 
            R=>CLRPIN, 
            CLK=>TB_5ms_C, 
            D=>TB_5ms_D );
  FF_TB_10ms_I_1:   DFFRH port map ( Q=>TB_10msQ, 
            R=>CLRPIN, 
            CLK=>TB_10ms_C, 
            D=>TB_10ms_D );
  FF_TB_20ms_I_1:   DFFRH port map ( Q=>TB_20msQ, 
            R=>CLRPIN, 
            CLK=>TB_20ms_C, 
            D=>TB_20ms_D );
  FF_TB_50ms_I_1:   DFFRH port map ( Q=>TB_50msQ, 
            R=>CLRPIN, 
            CLK=>TB_50ms_C, 
            D=>TB_50ms_D );
  FF_A00_I_1:   DFFRH port map ( Q=>A00Q, 
            R=>A00_AR, 
            CLK=>A00_C, 
            D=>A00_D );
  FF_A01_I_1:   DFFRH port map ( Q=>A01Q, 
            R=>A01_AR, 
            CLK=>A01_C, 
            D=>A01_D );
  FF_A02_I_1:   DFFRH port map ( Q=>A02Q, 
            R=>A02_AR, 
            CLK=>A02_C, 
            D=>A02_D );
  FF_A03_I_1:   DFFRH port map ( Q=>A03Q, 
            R=>A03_AR, 
            CLK=>A03_C, 
            D=>A03_D );
  FF_A04_I_1:   DFFRH port map ( Q=>A04Q, 
            R=>A04_AR, 
            CLK=>A04_C, 
            D=>A04_D );
  FF_A05_I_1:   DFFRH port map ( Q=>A05Q, 
            R=>A05_AR, 
            CLK=>A05_C, 
            D=>A05_D );
  FF_A06_I_1:   DFFRH port map ( Q=>A06Q, 
            R=>A06_AR, 
            CLK=>A06_C, 
            D=>A06_D );
  FF_A07_I_1:   DFFRH port map ( Q=>A07Q, 
            R=>A07_AR, 
            CLK=>A07_C, 
            D=>A07_D );
  FF_A08_I_1:   DFFRH port map ( Q=>A08Q, 
            R=>A08_AR, 
            CLK=>A08_C, 
            D=>A08_D );
  FF_A09_I_1:   DFFRH port map ( Q=>A09Q, 
            R=>A09_AR, 
            CLK=>A09_C, 
            D=>A09_D );
  FF_A10_I_1:   DFFRH port map ( Q=>A10Q, 
            R=>A10_AR, 
            CLK=>A10_C, 
            D=>A10_D );
  FF_A11_I_1:   DFFRH port map ( Q=>A11Q, 
            R=>A11_AR, 
            CLK=>A11_C, 
            D=>A11_D );
  FF_N_57_I_1:   DFFRH port map ( Q=>N_57Q, 
            R=>WRADQ, 
            CLK=>S2PIN, 
            D=>N_57_D );
  FF_N_49_I_1:   DFFRH port map ( Q=>N_49Q, 
            R=>R2PIN, 
            CLK=>A11Q, 
            D=>VCC_net );
  FF_D0_OUTPUT_QC_I_1:   DFFRH port map ( Q=>D0_OUTPUT_QCQ, 
            R=>CLRPIN, 
            CLK=>D0_OUTPUT_QC_C, 
            D=>D0_OUTPUT_QC_D );
  FF_E0_OUTPUT_QC_I_1:   DFFRH port map ( Q=>E0_OUTPUT_QCQ, 
            R=>CLRPIN, 
            CLK=>E0_OUTPUT_QC_C, 
            D=>E0_OUTPUT_QC_D );
  FF_F0_OUTPUT_QC_I_1:   DFFRH port map ( Q=>F0_OUTPUT_QCQ, 
            R=>CLRPIN, 
            CLK=>F0_OUTPUT_QC_C, 
            D=>F0_OUTPUT_QC_D );
  FF_G0_OUTPUT_QC_I_1:   DFFRH port map ( Q=>G0_OUTPUT_QCQ, 
            R=>CLRPIN, 
            CLK=>G0_OUTPUT_QC_C, 
            D=>G0_OUTPUT_QC_D );
  FF_H0_OUTPUT_QC_I_1:   DFFRH port map ( Q=>H0_OUTPUT_QCQ, 
            R=>CLRPIN, 
            CLK=>H0_OUTPUT_QC_C, 
            D=>H0_OUTPUT_QC_D );
  GATE_CE_RAM_I_1:   NOR2 port map ( O=>CE_RAMCOM, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_WRAD_D_I_1:   INV port map ( I0=>N_57Q, 
            O=>WRAD_D );
  GATE_TB_1us_D_I_1:   XOR2 port map ( O=>TB_1us_D, 
            I1=>TB_1usQ, 
            I0=>CLKPIN );
  GATE_TB_1us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_1us_C );
  GATE_TB_2us_D_I_1:   OR3 port map ( O=>TB_2us_D, 
            I2=>T_39, 
            I1=>T_38, 
            I0=>T_40 );
  GATE_TB_2us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_2us_C );
  GATE_TB_5us_D_I_1:   OR2 port map ( O=>TB_5us_D, 
            I1=>T_37, 
            I0=>T_36 );
  GATE_TB_5us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_5us_C );
  GATE_TB_10us_D_I_1:   XOR2 port map ( O=>TB_10us_D, 
            I1=>TB_10usQ, 
            I0=>TB_5usQ );
  GATE_TB_10us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_10us_C );
  GATE_TB_20us_D_I_1:   OR3 port map ( O=>TB_20us_D, 
            I2=>T_34, 
            I1=>T_33, 
            I0=>T_35 );
  GATE_TB_20us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_20us_C );
  GATE_TB_50us_D_I_1:   OR2 port map ( O=>TB_50us_D, 
            I1=>T_32, 
            I0=>T_31 );
  GATE_TB_50us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_50us_C );
  GATE_TB_100us_D_I_1:   XOR2 port map ( O=>TB_100us_D, 
            I1=>TB_100usQ, 
            I0=>TB_50usQ );
  GATE_TB_100us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_100us_C );
  GATE_TB_200us_D_I_1:   OR3 port map ( O=>TB_200us_D, 
            I2=>T_29, 
            I1=>T_28, 
            I0=>T_30 );
  GATE_TB_200us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_200us_C );
  GATE_TB_500us_D_I_1:   OR2 port map ( O=>TB_500us_D, 
            I1=>T_27, 
            I0=>T_26 );
  GATE_TB_500us_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_500us_C );
  GATE_TB_1ms_D_I_1:   XOR2 port map ( O=>TB_1ms_D, 
            I1=>TB_1msQ, 
            I0=>TB_500usQ );
  GATE_TB_1ms_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_1ms_C );
  GATE_TB_2ms_D_I_1:   OR3 port map ( O=>TB_2ms_D, 
            I2=>T_24, 
            I1=>T_23, 
            I0=>T_25 );
  GATE_TB_2ms_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_2ms_C );
  GATE_TB_5ms_D_I_1:   OR2 port map ( O=>TB_5ms_D, 
            I1=>T_22, 
            I0=>T_21 );
  GATE_TB_5ms_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_5ms_C );
  GATE_TB_10ms_D_I_1:   XOR2 port map ( O=>TB_10ms_D, 
            I1=>TB_10msQ, 
            I0=>TB_5msQ );
  GATE_TB_10ms_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_10ms_C );
  GATE_TB_20ms_D_I_1:   OR3 port map ( O=>TB_20ms_D, 
            I2=>T_19, 
            I1=>T_18, 
            I0=>T_20 );
  GATE_TB_20ms_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_20ms_C );
  GATE_TB_50ms_D_I_1:   OR2 port map ( O=>TB_50ms_D, 
            I1=>T_17, 
            I0=>T_16 );
  GATE_TB_50ms_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>TB_50ms_C );
  GATE_A00_D_I_1:   OR3 port map ( O=>A00_D, 
            I2=>T_14, 
            I1=>T_13, 
            I0=>T_15 );
  GATE_T_0_I_1:   NOR2 port map ( O=>T_0, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A00_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A00_AR );
  GATE_A01_D_I_1:   XOR2 port map ( O=>GATE_A01_D_Y, 
            I1=>A01Q, 
            I0=>A00Q );
  GATE_A01_D_I_2:   INV port map ( O=>A01_D, 
            I0=>GATE_A01_D_Y );
  GATE_T_1_I_1:   NOR2 port map ( O=>T_1, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A01_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A01_AR );
  GATE_A02_D_I_1:   XOR2 port map ( O=>GATE_A02_D_Y, 
            I1=>A02Q, 
            I0=>A01Q );
  GATE_A02_D_I_2:   INV port map ( O=>A02_D, 
            I0=>GATE_A02_D_Y );
  GATE_T_2_I_1:   NOR2 port map ( O=>T_2, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A02_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A02_AR );
  GATE_A03_D_I_1:   XOR2 port map ( O=>GATE_A03_D_Y, 
            I1=>A03Q, 
            I0=>A02Q );
  GATE_A03_D_I_2:   INV port map ( O=>A03_D, 
            I0=>GATE_A03_D_Y );
  GATE_T_3_I_1:   NOR2 port map ( O=>T_3, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A03_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A03_AR );
  GATE_A04_D_I_1:   XOR2 port map ( O=>GATE_A04_D_Y, 
            I1=>A04Q, 
            I0=>A03Q );
  GATE_A04_D_I_2:   INV port map ( O=>A04_D, 
            I0=>GATE_A04_D_Y );
  GATE_T_4_I_1:   NOR2 port map ( O=>T_4, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A04_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A04_AR );
  GATE_A05_D_I_1:   XOR2 port map ( O=>GATE_A05_D_Y, 
            I1=>A05Q, 
            I0=>A04Q );
  GATE_A05_D_I_2:   INV port map ( O=>A05_D, 
            I0=>GATE_A05_D_Y );
  GATE_T_5_I_1:   NOR2 port map ( O=>T_5, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A05_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A05_AR );
  GATE_A06_D_I_1:   XOR2 port map ( O=>GATE_A06_D_Y, 
            I1=>A06Q, 
            I0=>A05Q );
  GATE_A06_D_I_2:   INV port map ( O=>A06_D, 
            I0=>GATE_A06_D_Y );
  GATE_T_6_I_1:   NOR2 port map ( O=>T_6, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A06_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A06_AR );
  GATE_A07_D_I_1:   XOR2 port map ( O=>GATE_A07_D_Y, 
            I1=>A07Q, 
            I0=>A06Q );
  GATE_A07_D_I_2:   INV port map ( O=>A07_D, 
            I0=>GATE_A07_D_Y );
  GATE_T_7_I_1:   NOR2 port map ( O=>T_7, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A07_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A07_AR );
  GATE_A08_D_I_1:   XOR2 port map ( O=>GATE_A08_D_Y, 
            I1=>A08Q, 
            I0=>A07Q );
  GATE_A08_D_I_2:   INV port map ( O=>A08_D, 
            I0=>GATE_A08_D_Y );
  GATE_T_8_I_1:   NOR2 port map ( O=>T_8, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A08_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A08_AR );
  GATE_A09_D_I_1:   XOR2 port map ( O=>GATE_A09_D_Y, 
            I1=>A09Q, 
            I0=>A08Q );
  GATE_A09_D_I_2:   INV port map ( O=>A09_D, 
            I0=>GATE_A09_D_Y );
  GATE_T_9_I_1:   NOR2 port map ( O=>T_9, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A09_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A09_AR );
  GATE_A10_D_I_1:   XOR2 port map ( O=>GATE_A10_D_Y, 
            I1=>A10Q, 
            I0=>A09Q );
  GATE_A10_D_I_2:   INV port map ( O=>A10_D, 
            I0=>GATE_A10_D_Y );
  GATE_T_10_I_1:   NOR2 port map ( O=>T_10, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A10_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A10_AR );
  GATE_A11_D_I_1:   XOR2 port map ( O=>GATE_A11_D_Y, 
            I1=>A10Q, 
            I0=>A11Q );
  GATE_A11_D_I_2:   INV port map ( O=>A11_D, 
            I0=>GATE_A11_D_Y );
  GATE_T_11_I_1:   NOR2 port map ( O=>T_11, 
            I1=>N_49Q, 
            I0=>N_57Q );
  GATE_A11_AR_I_1:   INV port map ( I0=>C8Q, 
            O=>A11_AR );
  GATE_T_12_I_1:   NOR2 port map ( O=>T_12, 
            I1=>WRADQ, 
            I0=>N_57Q );
  GATE_D0_OUTPUT_QC_D_I_1:   XOR2 port map ( O=>D0_OUTPUT_QC_D, 
            I1=>D0_OUTPUT_QCQ, 
            I0=>TB_20msQ );
  GATE_D0_OUTPUT_QC_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>D0_OUTPUT_QC_C );
  GATE_E0_OUTPUT_QC_D_I_1:   XOR2 port map ( O=>E0_OUTPUT_QC_D, 
            I1=>E0_OUTPUT_QCQ, 
            I0=>TB_2msQ );
  GATE_E0_OUTPUT_QC_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>E0_OUTPUT_QC_C );
  GATE_F0_OUTPUT_QC_D_I_1:   XOR2 port map ( O=>F0_OUTPUT_QC_D, 
            I1=>F0_OUTPUT_QCQ, 
            I0=>TB_200usQ );
  GATE_F0_OUTPUT_QC_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>F0_OUTPUT_QC_C );
  GATE_G0_OUTPUT_QC_D_I_1:   XOR2 port map ( O=>G0_OUTPUT_QC_D, 
            I1=>G0_OUTPUT_QCQ, 
            I0=>TB_20usQ );
  GATE_G0_OUTPUT_QC_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>G0_OUTPUT_QC_C );
  GATE_H0_OUTPUT_QC_D_I_1:   XOR2 port map ( O=>H0_OUTPUT_QC_D, 
            I1=>H0_OUTPUT_QCQ, 
            I0=>TB_2usQ );
  GATE_H0_OUTPUT_QC_C_I_1:   INV port map ( I0=>CLKPIN, 
            O=>H0_OUTPUT_QC_C );
  GATE_A00_C_I_1:   INV port map ( I0=>T_0, 
            O=>A00_C );
  GATE_A01_C_I_1:   INV port map ( I0=>T_1, 
            O=>A01_C );
  GATE_A02_C_I_1:   INV port map ( I0=>T_2, 
            O=>A02_C );
  GATE_A03_C_I_1:   INV port map ( I0=>T_3, 
            O=>A03_C );
  GATE_A04_C_I_1:   INV port map ( I0=>T_4, 
            O=>A04_C );
  GATE_A05_C_I_1:   INV port map ( I0=>T_5, 
            O=>A05_C );
  GATE_A06_C_I_1:   INV port map ( I0=>T_6, 
            O=>A06_C );
  GATE_A07_C_I_1:   INV port map ( I0=>T_7, 
            O=>A07_C );
  GATE_A08_C_I_1:   INV port map ( I0=>T_8, 
            O=>A08_C );
  GATE_A09_C_I_1:   INV port map ( I0=>T_9, 
            O=>A09_C );
  GATE_A10_C_I_1:   INV port map ( I0=>T_10, 
            O=>A10_C );
  GATE_A11_C_I_1:   INV port map ( I0=>T_11, 
            O=>A11_C );
  GATE_N_57_D_I_1:   INV port map ( I0=>T_12, 
            O=>N_57_D );
  GATE_T_13_I_1:   INV port map ( I0=>N_49Q, 
            O=>GATE_T_13_A );
  GATE_T_13_I_2:   INV port map ( I0=>N_57Q, 
            O=>GATE_T_13_B );
  GATE_T_13_I_3:   AND3 port map ( O=>T_13, 
            I0=>A00Q, 
            I2=>GATE_T_13_A, 
            I1=>GATE_T_13_B );
  GATE_T_14_I_1:   AND2 port map ( O=>T_14, 
            I1=>N_49Q, 
            I0=>GATE_T_14_A );
  GATE_T_14_I_2:   INV port map ( O=>GATE_T_14_A, 
            I0=>A00Q );
  GATE_T_15_I_1:   AND2 port map ( O=>T_15, 
            I1=>N_57Q, 
            I0=>GATE_T_15_A );
  GATE_T_15_I_2:   INV port map ( O=>GATE_T_15_A, 
            I0=>A00Q );
  GATE_T_16_I_1:   AND4 port map ( O=>T_16, 
            I3=>TB_20msQ, 
            I2=>TB_10msQ, 
            I1=>D0_OUTPUT_QCQ, 
            I0=>GATE_T_16_A );
  GATE_T_16_I_2:   INV port map ( I0=>TB_50msQ, 
            O=>GATE_T_16_A );
  GATE_T_17_I_1:   AND2 port map ( O=>T_17, 
            I1=>TB_50msQ, 
            I0=>GATE_T_17_A );
  GATE_T_17_I_2:   INV port map ( O=>GATE_T_17_A, 
            I0=>TB_10msQ );
  GATE_T_18_I_1:   INV port map ( I0=>TB_50msQ, 
            O=>GATE_T_18_A );
  GATE_T_18_I_2:   INV port map ( I0=>TB_20msQ, 
            O=>GATE_T_18_B );
  GATE_T_18_I_3:   AND3 port map ( O=>T_18, 
            I0=>TB_10msQ, 
            I2=>GATE_T_18_A, 
            I1=>GATE_T_18_B );
  GATE_T_19_I_1:   AND2 port map ( O=>T_19, 
            I1=>TB_50msQ, 
            I0=>TB_20msQ );
  GATE_T_20_I_1:   AND2 port map ( O=>T_20, 
            I1=>TB_20msQ, 
            I0=>GATE_T_20_A );
  GATE_T_20_I_2:   INV port map ( O=>GATE_T_20_A, 
            I0=>TB_10msQ );
  GATE_T_21_I_1:   AND4 port map ( O=>T_21, 
            I3=>TB_2msQ, 
            I2=>TB_1msQ, 
            I1=>E0_OUTPUT_QCQ, 
            I0=>GATE_T_21_A );
  GATE_T_21_I_2:   INV port map ( I0=>TB_5msQ, 
            O=>GATE_T_21_A );
  GATE_T_22_I_1:   AND2 port map ( O=>T_22, 
            I1=>TB_5msQ, 
            I0=>GATE_T_22_A );
  GATE_T_22_I_2:   INV port map ( O=>GATE_T_22_A, 
            I0=>TB_1msQ );
  GATE_T_23_I_1:   INV port map ( I0=>TB_5msQ, 
            O=>GATE_T_23_A );
  GATE_T_23_I_2:   INV port map ( I0=>TB_2msQ, 
            O=>GATE_T_23_B );
  GATE_T_23_I_3:   AND3 port map ( O=>T_23, 
            I0=>TB_1msQ, 
            I2=>GATE_T_23_A, 
            I1=>GATE_T_23_B );
  GATE_T_24_I_1:   AND2 port map ( O=>T_24, 
            I1=>TB_5msQ, 
            I0=>TB_2msQ );
  GATE_T_25_I_1:   AND2 port map ( O=>T_25, 
            I1=>TB_2msQ, 
            I0=>GATE_T_25_A );
  GATE_T_25_I_2:   INV port map ( O=>GATE_T_25_A, 
            I0=>TB_1msQ );
  GATE_T_26_I_1:   AND4 port map ( O=>T_26, 
            I3=>TB_200usQ, 
            I2=>TB_100usQ, 
            I1=>F0_OUTPUT_QCQ, 
            I0=>GATE_T_26_A );
  GATE_T_26_I_2:   INV port map ( I0=>TB_500usQ, 
            O=>GATE_T_26_A );
  GATE_T_27_I_1:   AND2 port map ( O=>T_27, 
            I1=>TB_500usQ, 
            I0=>GATE_T_27_A );
  GATE_T_27_I_2:   INV port map ( O=>GATE_T_27_A, 
            I0=>TB_100usQ );
  GATE_T_28_I_1:   INV port map ( I0=>TB_500usQ, 
            O=>GATE_T_28_A );
  GATE_T_28_I_2:   INV port map ( I0=>TB_200usQ, 
            O=>GATE_T_28_B );
  GATE_T_28_I_3:   AND3 port map ( O=>T_28, 
            I0=>TB_100usQ, 
            I2=>GATE_T_28_A, 
            I1=>GATE_T_28_B );
  GATE_T_29_I_1:   AND2 port map ( O=>T_29, 
            I1=>TB_500usQ, 
            I0=>TB_200usQ );
  GATE_T_30_I_1:   AND2 port map ( O=>T_30, 
            I1=>TB_200usQ, 
            I0=>GATE_T_30_A );
  GATE_T_30_I_2:   INV port map ( O=>GATE_T_30_A, 
            I0=>TB_100usQ );
  GATE_T_31_I_1:   AND4 port map ( O=>T_31, 
            I3=>TB_20usQ, 
            I2=>TB_10usQ, 
            I1=>G0_OUTPUT_QCQ, 
            I0=>GATE_T_31_A );
  GATE_T_31_I_2:   INV port map ( I0=>TB_50usQ, 
            O=>GATE_T_31_A );
  GATE_T_32_I_1:   AND2 port map ( O=>T_32, 
            I1=>TB_50usQ, 
            I0=>GATE_T_32_A );
  GATE_T_32_I_2:   INV port map ( O=>GATE_T_32_A, 
            I0=>TB_10usQ );
  GATE_T_33_I_1:   INV port map ( I0=>TB_50usQ, 
            O=>GATE_T_33_A );
  GATE_T_33_I_2:   INV port map ( I0=>TB_20usQ, 
            O=>GATE_T_33_B );
  GATE_T_33_I_3:   AND3 port map ( O=>T_33, 
            I0=>TB_10usQ, 
            I2=>GATE_T_33_A, 
            I1=>GATE_T_33_B );
  GATE_T_34_I_1:   AND2 port map ( O=>T_34, 
            I1=>TB_50usQ, 
            I0=>TB_20usQ );
  GATE_T_35_I_1:   AND2 port map ( O=>T_35, 
            I1=>TB_20usQ, 
            I0=>GATE_T_35_A );
  GATE_T_35_I_2:   INV port map ( O=>GATE_T_35_A, 
            I0=>TB_10usQ );
  GATE_T_36_I_1:   AND4 port map ( O=>T_36, 
            I3=>TB_2usQ, 
            I2=>TB_1usQ, 
            I1=>H0_OUTPUT_QCQ, 
            I0=>GATE_T_36_A );
  GATE_T_36_I_2:   INV port map ( I0=>TB_5usQ, 
            O=>GATE_T_36_A );
  GATE_T_37_I_1:   AND2 port map ( O=>T_37, 
            I1=>TB_5usQ, 
            I0=>GATE_T_37_A );
  GATE_T_37_I_2:   INV port map ( O=>GATE_T_37_A, 
            I0=>TB_1usQ );
  GATE_T_38_I_1:   INV port map ( I0=>TB_5usQ, 
            O=>GATE_T_38_A );
  GATE_T_38_I_2:   INV port map ( I0=>TB_2usQ, 
            O=>GATE_T_38_B );
  GATE_T_38_I_3:   AND3 port map ( O=>T_38, 
            I0=>TB_1usQ, 
            I2=>GATE_T_38_A, 
            I1=>GATE_T_38_B );
  GATE_T_39_I_1:   AND2 port map ( O=>T_39, 
            I1=>TB_5usQ, 
            I0=>TB_2usQ );
  GATE_T_40_I_1:   AND2 port map ( O=>T_40, 
            I1=>TB_2usQ, 
            I0=>GATE_T_40_A );
  GATE_T_40_I_2:   INV port map ( O=>GATE_T_40_A, 
            I0=>TB_1usQ );

end NetList;
