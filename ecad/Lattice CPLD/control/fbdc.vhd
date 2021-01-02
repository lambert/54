-- VHDL model created from schematic fbdc.sch -- Aug 07 22:00:44 2006

LIBRARY ieee;
LIBRARY generics;
LIBRARY lat_vhd;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;
USE lat_vhd.components.ALL;

entity FBDC is
      Port (   CLEAR : In    std_logic;
                 CLK : In    std_logic;
             INPUT_A : In    std_logic;
             INPUT_B : In    std_logic;
             OUTPUT_QA : Out   std_logic;
             OUTPUT_QB : Out   std_logic;
             OUTPUT_QC : Out   std_logic;
             OUTPUT_QD : Out   std_logic );
end FBDC;

architecture SCHEMATIC of FBDC is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal OUTPUT_QB_DUMMY : std_logic;
   signal OUTPUT_QC_DUMMY : std_logic;
   signal OUTPUT_QD_DUMMY : std_logic;
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

begin

   OUTPUT_QD <= OUTPUT_QD_DUMMY;
   OUTPUT_QC <= OUTPUT_QC_DUMMY;
   OUTPUT_QB <= OUTPUT_QB_DUMMY;

   G100 : G_BUF
      Port Map ( A=>CLEAR, Y=>N_4 );
   FF103 : G_TC
      Port Map ( C=>N_4, CLK=>N_7, T=>N_1, Q=>OUTPUT_QD_DUMMY );
   FF102 : G_TC
      Port Map ( C=>N_4, CLK=>N_7, T=>OUTPUT_QB_DUMMY,
                 Q=>OUTPUT_QC_DUMMY );
   FF100 : G_TC
      Port Map ( C=>N_4, CLK=>N_7, T=>INPUT_A, Q=>OUTPUT_QA );
   FF101 : G_TC
      Port Map ( C=>N_4, CLK=>N_7, T=>N_2, Q=>OUTPUT_QB_DUMMY );
   G104 : G_2NOR
      Port Map ( A=>N_10, B=>N_9, YN=>N_8 );
   G109 : G_INV
      Port Map ( A=>OUTPUT_QD_DUMMY, YN=>N_5 );
   G108 : G_INV
      Port Map ( A=>OUTPUT_QC_DUMMY, YN=>N_3 );
   G107 : G_INV
      Port Map ( A=>OUTPUT_QB_DUMMY, YN=>N_6 );
   G101 : G_INV
      Port Map ( A=>CLK, YN=>N_7 );
   G106 : G_2AND
      Port Map ( A=>N_8, B=>INPUT_B, Y=>N_1 );
   G102 : G_2AND
      Port Map ( A=>N_5, B=>N_6, Y=>N_9 );
   G103 : G_2AND
      Port Map ( A=>N_5, B=>N_3, Y=>N_10 );
   G105 : G_2AND
      Port Map ( A=>N_5, B=>INPUT_B, Y=>N_2 );

end SCHEMATIC;
