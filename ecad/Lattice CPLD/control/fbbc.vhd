-- VHDL model created from schematic fbbc.sch -- Aug 07 21:59:41 2006

LIBRARY ieee;
LIBRARY generics;
LIBRARY lat_vhd;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;
USE lat_vhd.components.ALL;

entity FBBC is
      Port (   CLEAR : In    std_logic;
                 CLK : In    std_logic;
             INPUT_A : In    std_logic;
             OUTPUT_QA : Out   std_logic;
             OUTPUT_QB : Out   std_logic;
             OUTPUT_QC : Out   std_logic;
             OUTPUT_QD : Out   std_logic );
end FBBC;

architecture SCHEMATIC of FBBC is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal OUTPUT_QA_DUMMY : std_logic;
   signal OUTPUT_QB_DUMMY : std_logic;
   signal OUTPUT_QC_DUMMY : std_logic;
   signal      N_1 : std_logic;
   signal      N_2 : std_logic;
   signal      N_3 : std_logic;
   signal      N_4 : std_logic;
   signal      N_5 : std_logic;
   signal      N_6 : std_logic;

begin

   OUTPUT_QC <= OUTPUT_QC_DUMMY;
   OUTPUT_QB <= OUTPUT_QB_DUMMY;
   OUTPUT_QA <= OUTPUT_QA_DUMMY;

   G201 : G_BUF
      Port Map ( A=>CLEAR, Y=>N_6 );
   FF202 : G_TC
      Port Map ( C=>N_6, CLK=>N_4, T=>N_2, Q=>OUTPUT_QC_DUMMY );
   FF201 : G_TC
      Port Map ( C=>N_6, CLK=>N_4, T=>N_1, Q=>OUTPUT_QB_DUMMY );
   FF200 : G_TC
      Port Map ( C=>N_6, CLK=>N_4, T=>N_5, Q=>OUTPUT_QA_DUMMY );
   FF203 : G_TC
      Port Map ( C=>N_6, CLK=>N_4, T=>N_3, Q=>OUTPUT_QD );
   G203 : G_INV
      Port Map ( A=>OUTPUT_QA_DUMMY, YN=>N_1 );
   G205 : G_INV
      Port Map ( A=>OUTPUT_QC_DUMMY, YN=>N_3 );
   G204 : G_INV
      Port Map ( A=>OUTPUT_QB_DUMMY, YN=>N_2 );
   G202 : G_INV
      Port Map ( A=>CLK, YN=>N_4 );
   G200 : G_INV
      Port Map ( A=>INPUT_A, YN=>N_5 );

end SCHEMATIC;
