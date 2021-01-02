-- VHDL model created from schematic control.sch -- Jul 15 19:26:43 2006

LIBRARY vanmacro;
USE vanmacro.components.ALL;
LIBRARY ieee;
LIBRARY generics;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;

entity CONTROL is
      Port (     CLK : In    std_logic;
                 CLR : In    std_logic;
                  R2 : In    std_logic;
                  R3 : In    std_logic;
                  S1 : In    std_logic;
                  S2 : In    std_logic;
                 A00 : Out   std_logic;
                 A01 : Out   std_logic;
                 A02 : Out   std_logic;
                 A03 : Out   std_logic;
                 A04 : Out   std_logic;
                 A05 : Out   std_logic;
                 A06 : Out   std_logic;
                 A07 : Out   std_logic;
                 A08 : Out   std_logic;
                 A09 : Out   std_logic;
                 A10 : Out   std_logic;
                 A11 : Out   std_logic;
                  C8 : Out   std_logic;
              CE_RAM : Out   std_logic;
                READ : Out   std_logic;
               READY : Out   std_logic;
             TB_100us : Out   std_logic;
             TB_10ms : Out   std_logic;
             TB_10us : Out   std_logic;
              TB_1ms : Out   std_logic;
              TB_1us : Out   std_logic;
             TB_200us : Out   std_logic;
             TB_20ms : Out   std_logic;
             TB_20us : Out   std_logic;
              TB_2ms : Out   std_logic;
              TB_2us : Out   std_logic;
             TB_500us : Out   std_logic;
             TB_50ms : Out   std_logic;
             TB_50us : Out   std_logic;
              TB_5ms : Out   std_logic;
              TB_5us : Out   std_logic;
                WRAD : Out   std_logic );
end CONTROL;

architecture SCHEMATIC of CONTROL is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_57 : std_logic;
   signal     N_56 : std_logic;
   signal     N_55 : std_logic;
   signal     N_47 : std_logic;
   signal     N_48 : std_logic;
   signal     N_49 : std_logic;
   signal     N_52 : std_logic;
   signal     N_53 : std_logic;
   signal     N_54 : std_logic;
   signal     N_42 : std_logic;
   signal     N_35 : std_logic;
   signal     N_36 : std_logic;
   signal     N_37 : std_logic;
   signal     N_38 : std_logic;
   signal     N_40 : std_logic;
   signal      N_3 : std_logic;
   signal      N_4 : std_logic;
   signal      N_5 : std_logic;
   signal      N_6 : std_logic;
   signal      N_7 : std_logic;
   signal      N_8 : std_logic;
   signal      N_9 : std_logic;
   signal     N_10 : std_logic;
   signal     N_11 : std_logic;
   signal     N_12 : std_logic;
   signal     N_13 : std_logic;
   signal     N_14 : std_logic;
   signal     N_15 : std_logic;
   signal     N_16 : std_logic;
   signal     N_17 : std_logic;
   signal     N_19 : std_logic;
   signal     N_20 : std_logic;
   signal     N_21 : std_logic;
   signal     N_22 : std_logic;
   signal     N_23 : std_logic;
   signal     N_24 : std_logic;
   signal     N_25 : std_logic;
   signal     N_26 : std_logic;
   signal     N_27 : std_logic;
   signal     N_28 : std_logic;
   signal     N_29 : std_logic;

   component ADDRESSBUS
      Port ( AB_CLEAR : In    std_logic;
              AB_CLK : In    std_logic;
                 A00 : Out   std_logic;
                 A01 : Out   std_logic;
                 A02 : Out   std_logic;
                 A03 : Out   std_logic;
                 A04 : Out   std_logic;
                 A05 : Out   std_logic;
                 A06 : Out   std_logic;
                 A07 : Out   std_logic;
                 A08 : Out   std_logic;
                 A09 : Out   std_logic;
                 A10 : Out   std_logic;
                 A11 : Out   std_logic );
   end component;

   component TIMEBASE
      Port ( TB_CLEAR : In    std_logic;
              TB_CLK : In    std_logic;
             TB_100us : Out   std_logic;
             TB_10ms : Out   std_logic;
             TB_10us : Out   std_logic;
              TB_1ms : Out   std_logic;
              TB_1us : Out   std_logic;
             TB_200us : Out   std_logic;
             TB_20ms : Out   std_logic;
             TB_20us : Out   std_logic;
              TB_2ms : Out   std_logic;
              TB_2us : Out   std_logic;
             TB_500us : Out   std_logic;
             TB_50ms : Out   std_logic;
             TB_50us : Out   std_logic;
              TB_5ms : Out   std_logic;
              TB_5us : Out   std_logic );
   end component;

begin

   G100 : G_INV
      Port Map ( A=>N_57, YN=>N_52 );
   G102 : G_INV
      Port Map ( A=>N_49, YN=>N_48 );
   G103 : G_INV
      Port Map ( A=>N_40, YN=>N_36 );
   G101 : G_2AND
      Port Map ( A=>N_48, B=>N_52, Y=>N_56 );
   FF100 : G_JKC
      Port Map ( C=>VCC, CLK=>N_54, J=>N_52, K=>N_57, Q=>N_55 );
   FF101 : G_JKC
      Port Map ( C=>N_55, CLK=>N_47, J=>N_55, K=>GND, Q=>N_57 );
   FF103 : G_JKC
      Port Map ( C=>N_38, CLK=>N_35, J=>VCC, K=>GND, Q=>N_40 );
   FF102 : G_JKC
      Port Map ( C=>N_37, CLK=>N_14, J=>VCC, K=>GND, Q=>N_49 );
   FB101 : ADDRESSBUS
      Port Map ( AB_CLEAR=>N_36, AB_CLK=>N_56, A00=>N_10, A01=>N_13,
                 A02=>N_17, A03=>N_20, A04=>N_24, A05=>N_28, A06=>N_4,
                 A07=>N_29, A08=>N_25, A09=>N_21, A10=>N_42, A11=>N_14 );
   WR : G_OUTPUT
      Port Map ( I=>N_55, O=>WRAD );
   RD : G_OUTPUT
      Port Map ( I=>N_49, O=>READ );
   C8 : G_OUTPUT
      Port Map ( I=>N_40, O=>C8 );
   RDY : G_OUTPUT
      Port Map ( I=>N_48, O=>READY );
   CE : G_OUTPUT
      Port Map ( I=>N_56, O=>CE_RAM );
   ABC_11 : G_OUTPUT
      Port Map ( I=>N_14, O=>A11 );
   ABC_10 : G_OUTPUT
      Port Map ( I=>N_42, O=>A10 );
   ABC_09 : G_OUTPUT
      Port Map ( I=>N_21, O=>A09 );
   ABC_08 : G_OUTPUT
      Port Map ( I=>N_25, O=>A08 );
   ABC_07 : G_OUTPUT
      Port Map ( I=>N_29, O=>A07 );
   ABC_06 : G_OUTPUT
      Port Map ( I=>N_4, O=>A06 );
   ABC_05 : G_OUTPUT
      Port Map ( I=>N_28, O=>A05 );
   ABC_04 : G_OUTPUT
      Port Map ( I=>N_24, O=>A04 );
   ABC_03 : G_OUTPUT
      Port Map ( I=>N_20, O=>A03 );
   ABC_02 : G_OUTPUT
      Port Map ( I=>N_17, O=>A02 );
   ABC_01 : G_OUTPUT
      Port Map ( I=>N_13, O=>A01 );
   ABC_00 : G_OUTPUT
      Port Map ( I=>N_10, O=>A00 );
   TB_00 : G_OUTPUT
      Port Map ( I=>N_6, O=>TB_1us );
   TB_01 : G_OUTPUT
      Port Map ( I=>N_8, O=>TB_2us );
   TB_02 : G_OUTPUT
      Port Map ( I=>N_11, O=>TB_5us );
   TB_03 : G_OUTPUT
      Port Map ( I=>N_15, O=>TB_10us );
   TB_04 : G_OUTPUT
      Port Map ( I=>N_19, O=>TB_20us );
   TB_05 : G_OUTPUT
      Port Map ( I=>N_22, O=>TB_50us );
   TB_06 : G_OUTPUT
      Port Map ( I=>N_26, O=>TB_100us );
   TB_07 : G_OUTPUT
      Port Map ( I=>N_3, O=>TB_200us );
   TB_08 : G_OUTPUT
      Port Map ( I=>N_27, O=>TB_500us );
   TB_09 : G_OUTPUT
      Port Map ( I=>N_23, O=>TB_1ms );
   TB_10 : G_OUTPUT
      Port Map ( I=>N_16, O=>TB_2ms );
   TB_11 : G_OUTPUT
      Port Map ( I=>N_12, O=>TB_5ms );
   TB_12 : G_OUTPUT
      Port Map ( I=>N_9, O=>TB_10ms );
   TB_13 : G_OUTPUT
      Port Map ( I=>N_7, O=>TB_20ms );
   TB_14 : G_OUTPUT
      Port Map ( I=>N_5, O=>TB_50ms );
   CLOCK : G_CLKBUF
      Port Map ( I=>CLK, O=>N_54 );
   TIME : G_INPUT
      Port Map ( I=>S2, O=>N_47 );
   CLEAR : G_INPUT
      Port Map ( I=>CLR, O=>N_53 );
   R2 : G_INPUT
      Port Map ( I=>R2, O=>N_37 );
   R3 : G_INPUT
      Port Map ( I=>R3, O=>N_35 );
   START : G_INPUT
      Port Map ( I=>S1, O=>N_38 );
   FB100 : TIMEBASE
      Port Map ( TB_CLEAR=>N_53, TB_CLK=>N_54, TB_100us=>N_26,
                 TB_10ms=>N_9, TB_10us=>N_15, TB_1ms=>N_23, TB_1us=>N_6,
                 TB_200us=>N_3, TB_20ms=>N_7, TB_20us=>N_19,
                 TB_2ms=>N_16, TB_2us=>N_8, TB_500us=>N_27, TB_50ms=>N_5,
                 TB_50us=>N_22, TB_5ms=>N_12, TB_5us=>N_11 );

end SCHEMATIC;
