-- VHDL model created from schematic timebase.sch -- Aug 07 22:01:00 2006

LIBRARY ieee;
LIBRARY generics;
LIBRARY lat_vhd;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;
USE lat_vhd.components.ALL;

entity TIMEBASE is
      Port ( TB_CLEAR : In    std_logic;
              TB_CLK : In    std_logic;
             TB_100us : Out   std_logic;
             TB_10us : Out   std_logic;
              TB_1ms : Out   std_logic;
              TB_1us : Out   std_logic;
             TB_200us : Out   std_logic;
             TB_20us : Out   std_logic;
              TB_2ms : Out   std_logic;
              TB_2us : Out   std_logic;
             TB_500us : Out   std_logic;
             TB_50us : Out   std_logic;
              TB_5ms : Out   std_logic;
              TB_5us : Out   std_logic );
end TIMEBASE;

architecture SCHEMATIC of TIMEBASE is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal TB_100us_DUMMY : std_logic;
   signal TB_500us_DUMMY : std_logic;
   signal TB_1ms_DUMMY : std_logic;
   signal TB_1us_DUMMY : std_logic;
   signal TB_5us_DUMMY : std_logic;
   signal TB_10us_DUMMY : std_logic;
   signal TB_50us_DUMMY : std_logic;

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

   TB_50us <= TB_50us_DUMMY;
   TB_10us <= TB_10us_DUMMY;
   TB_5us <= TB_5us_DUMMY;
   TB_1us <= TB_1us_DUMMY;
   TB_1ms <= TB_1ms_DUMMY;
   TB_500us <= TB_500us_DUMMY;
   TB_100us <= TB_100us_DUMMY;

   FB104 : FBDC
      Port Map ( CLEAR=>TB_CLEAR, CLK=>TB_CLK, INPUT_A=>TB_500us_DUMMY,
                 INPUT_B=>TB_1ms_DUMMY, OUTPUT_QA=>TB_1ms_DUMMY,
                 OUTPUT_QB=>TB_2ms, OUTPUT_QC=>open, OUTPUT_QD=>TB_5ms );
   FB103 : FBDC
      Port Map ( CLEAR=>TB_CLEAR, CLK=>TB_CLK, INPUT_A=>TB_50us_DUMMY,
                 INPUT_B=>TB_100us_DUMMY, OUTPUT_QA=>TB_100us_DUMMY,
                 OUTPUT_QB=>TB_200us, OUTPUT_QC=>open,
                 OUTPUT_QD=>TB_500us_DUMMY );
   FB102 : FBDC
      Port Map ( CLEAR=>TB_CLEAR, CLK=>TB_CLK, INPUT_A=>TB_5us_DUMMY,
                 INPUT_B=>TB_10us_DUMMY, OUTPUT_QA=>TB_10us_DUMMY,
                 OUTPUT_QB=>TB_20us, OUTPUT_QC=>open,
                 OUTPUT_QD=>TB_50us_DUMMY );
   FB101 : FBDC
      Port Map ( CLEAR=>TB_CLEAR, CLK=>TB_CLK, INPUT_A=>TB_CLK,
                 INPUT_B=>TB_1us_DUMMY, OUTPUT_QA=>TB_1us_DUMMY,
                 OUTPUT_QB=>TB_2us, OUTPUT_QC=>open,
                 OUTPUT_QD=>TB_5us_DUMMY );

end SCHEMATIC;
