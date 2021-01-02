-- VHDL test bench created from symbol control.sym -- Mar 11 21:51:16 2007

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

   signal      CLK : std_logic;
   signal       R2 : std_logic;
   signal       R3 : std_logic;
   signal       S1 : std_logic;
   signal       S2 : std_logic;
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
   signal       C8 : std_logic;
   signal   CE_RAM : std_logic;
   signal     READ : std_logic;
   signal    READY : std_logic;
   signal TB_100us : std_logic;
   signal  TB_10us : std_logic;
   signal   TB_1ms : std_logic;
   signal   TB_1us : std_logic;
   signal TB_200us : std_logic;
   signal  TB_20us : std_logic;
   signal   TB_2ms : std_logic;
   signal   TB_2us : std_logic;
   signal TB_500us : std_logic;
   signal  TB_50us : std_logic;
   signal   TB_5ms : std_logic;
   signal   TB_5us : std_logic;
   signal     WRAD : std_logic;

   component CONTROL
      Port (     CLK : In    std_logic;
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
              TB_5us : Out   std_logic;
                WRAD : Out   std_logic );
   end component;

begin
   UUT : CONTROL
      Port Map ( A00=>A00, A01=>A01, A02=>A02, A03=>A03, A04=>A04,
                 A05=>A05, A06=>A06, A07=>A07, A08=>A08, A09=>A09,
                 A10=>A10, A11=>A11, C8=>C8, CE_RAM=>CE_RAM, CLK=>CLK,
                 R2=>R2, R3=>R3, READ=>READ, READY=>READY, S1=>S1,
                 S2=>S2, TB_100us=>TB_100us, TB_10us=>TB_10us,
                 TB_1ms=>TB_1ms, TB_1us=>TB_1us, TB_200us=>TB_200us,
                 TB_20us=>TB_20us, TB_2ms=>TB_2ms, TB_2us=>TB_2us,
                 TB_500us=>TB_500us, TB_50us=>TB_50us, TB_5ms=>TB_5ms,
                 TB_5us=>TB_5us, WRAD=>WRAD );

-- *** Test Bench - User Defined Section ***
   TB : process
   begin
      wait; -- will wait forever
   end process;
-- *** End Test Bench - User Defined Section ***

end behavior;

