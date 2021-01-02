-- VHDL test bench created from symbol fbdc.sym -- Aug 07 22:00:42 2006

LIBRARY vanmacro;
USE vanmacro.components.ALL;
LIBRARY ieee;
LIBRARY generics;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;

entity testbench is
end testbench;

Architecture behavior of testbench is

   signal    CLEAR : std_logic;
   signal      CLK : std_logic;
   signal  INPUT_A : std_logic;
   signal  INPUT_B : std_logic;
   signal OUTPUT_QA : std_logic;
   signal OUTPUT_QB : std_logic;
   signal OUTPUT_QC : std_logic;
   signal OUTPUT_QD : std_logic;

   component FBDC
      Port (   CLEAR : In    std_logic;
                 CLK : In    std_logic;
             INPUT_A : In    std_logic;
             INPUT_B : In    std_logic;
             OUTPUT_QA : Out   std_logic;
             OUTPUT_QB : Out   std_logic;
             OUTPUT_QC : Out   std_logic;
             OUTPUT_QD : Out   std_logic );
   end component;

begin
   UUT : FBDC
      Port Map ( CLEAR=>CLEAR, CLK=>CLK, INPUT_A=>INPUT_A,
                 INPUT_B=>INPUT_B, OUTPUT_QA=>OUTPUT_QA,
                 OUTPUT_QB=>OUTPUT_QB, OUTPUT_QC=>OUTPUT_QC,
                 OUTPUT_QD=>OUTPUT_QD );

-- *** Test Bench - User Defined Section ***
   TB : process
   begin
      wait; -- will wait forever
   end process;
-- *** End Test Bench - User Defined Section ***

end behavior;

