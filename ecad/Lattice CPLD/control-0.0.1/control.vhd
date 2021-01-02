-- VHDL model created from schematic control.sch -- Jul 09 16:08:09 2006

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
                 O_A : Out   std_logic;
                 O_B : Out   std_logic;
                 O_C : Out   std_logic;
                 O_D : Out   std_logic;
                 O_E : Out   std_logic;
                 O_F : Out   std_logic;
                 O_G : Out   std_logic;
                 O_H : Out   std_logic;
                 O_J : Out   std_logic;
                 O_K : Out   std_logic;
                 O_L : Out   std_logic;
                 O_M : Out   std_logic;
                 O_N : Out   std_logic;
                 O_P : Out   std_logic;
                 O_Q : Out   std_logic );
end CONTROL;

architecture SCHEMATIC of CONTROL is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal      N_1 : std_logic;
   signal      N_2 : std_logic;
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

   I26 : G_OUTPUT
      Port Map ( I=>N_5, O=>O_A );
   I27 : G_OUTPUT
      Port Map ( I=>N_7, O=>O_B );
   I28 : G_OUTPUT
      Port Map ( I=>N_9, O=>O_C );
   I29 : G_OUTPUT
      Port Map ( I=>N_11, O=>O_D );
   I30 : G_OUTPUT
      Port Map ( I=>N_13, O=>O_E );
   I31 : G_OUTPUT
      Port Map ( I=>N_14, O=>O_F );
   I32 : G_OUTPUT
      Port Map ( I=>N_16, O=>O_G );
   I33 : G_OUTPUT
      Port Map ( I=>N_1, O=>O_H );
   I34 : G_OUTPUT
      Port Map ( I=>N_17, O=>O_J );
   I35 : G_OUTPUT
      Port Map ( I=>N_15, O=>O_K );
   I36 : G_OUTPUT
      Port Map ( I=>N_12, O=>O_L );
   I37 : G_OUTPUT
      Port Map ( I=>N_10, O=>O_M );
   I38 : G_OUTPUT
      Port Map ( I=>N_8, O=>O_N );
   I39 : G_OUTPUT
      Port Map ( I=>N_6, O=>O_P );
   I40 : G_OUTPUT
      Port Map ( I=>N_4, O=>O_Q );
   I_00 : G_CLKBUF
      Port Map ( I=>CLK, O=>N_2 );
   I_01 : G_INPUT
      Port Map ( I=>CLR, O=>N_3 );
   I25 : TIMEBASE
      Port Map ( TB_CLEAR=>N_3, TB_CLK=>N_2, TB_100us=>N_16,
                 TB_10ms=>N_8, TB_10us=>N_11, TB_1ms=>N_15, TB_1us=>N_5,
                 TB_200us=>N_1, TB_20ms=>N_6, TB_20us=>N_13,
                 TB_2ms=>N_12, TB_2us=>N_7, TB_500us=>N_17, TB_50ms=>N_4,
                 TB_50us=>N_14, TB_5ms=>N_10, TB_5us=>N_9 );

end SCHEMATIC;
