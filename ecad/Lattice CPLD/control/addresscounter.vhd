-- VHDL model created from schematic addresscounter.sch -- Aug 07 22:00:03 2006

LIBRARY ieee;
LIBRARY generics;
LIBRARY lat_vhd;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;
USE lat_vhd.components.ALL;

entity ADDRESSCOUNTER is
      Port ( AC_CLEAR : In    std_logic;
              AC_CLK : In    std_logic;
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
end ADDRESSCOUNTER;

architecture SCHEMATIC of ADDRESSCOUNTER is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal A07_DUMMY : std_logic;
   signal A03_DUMMY : std_logic;

   component FBBC
      Port (   CLEAR : In    std_logic;
                 CLK : In    std_logic;
             INPUT_A : In    std_logic;
             OUTPUT_QA : Out   std_logic;
             OUTPUT_QB : Out   std_logic;
             OUTPUT_QC : Out   std_logic;
             OUTPUT_QD : Out   std_logic );
   end component;

begin

   A03 <= A03_DUMMY;
   A07 <= A07_DUMMY;

   FB203 : FBBC
      Port Map ( CLEAR=>AC_CLEAR, CLK=>AC_CLK, INPUT_A=>A07_DUMMY,
                 OUTPUT_QA=>A08, OUTPUT_QB=>A09, OUTPUT_QC=>A10,
                 OUTPUT_QD=>A11 );
   FB202 : FBBC
      Port Map ( CLEAR=>AC_CLEAR, CLK=>AC_CLK, INPUT_A=>A03_DUMMY,
                 OUTPUT_QA=>A04, OUTPUT_QB=>A05, OUTPUT_QC=>A06,
                 OUTPUT_QD=>A07_DUMMY );
   FB201 : FBBC
      Port Map ( CLEAR=>AC_CLEAR, CLK=>AC_CLK, INPUT_A=>AC_CLK,
                 OUTPUT_QA=>A00, OUTPUT_QB=>A01, OUTPUT_QC=>A02,
                 OUTPUT_QD=>A03_DUMMY );

end SCHEMATIC;
