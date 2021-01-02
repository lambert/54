-- VHDL test bench created from symbol addresscounter.sym -- Aug 07 22:00:01 2006

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

   signal AC_CLEAR : std_logic;
   signal   AC_CLK : std_logic;
   signal      A00 : std_logic;
   signal      A01 : std_logic;
   signal      A02 : std_logic;
   signal      A03 : std_logic;
   signal      A04 : std_logic;
   signal      A05 : std_logic;
   signal      A06 : std_logic;
   signal      A07 : std_logic;
   signal      A08 : std_logic;
   signal      A09 : std_logic;
   signal      A10 : std_logic;
   signal      A11 : std_logic;

   component ADDRESSCOUNTER
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
   end component;

begin
   UUT : ADDRESSCOUNTER
      Port Map ( A00=>A00, A01=>A01, A02=>A02, A03=>A03, A04=>A04,
                 A05=>A05, A06=>A06, A07=>A07, A08=>A08, A09=>A09,
                 A10=>A10, A11=>A11, AC_CLEAR=>AC_CLEAR, AC_CLK=>AC_CLK );

-- *** Test Bench - User Defined Section ***
   TB : process
   begin
      wait; -- will wait forever
   end process;
-- *** End Test Bench - User Defined Section ***

end behavior;

