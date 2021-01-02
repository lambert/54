-- VHDL test bench created from symbol timebase.sym -- Aug 07 22:00:59 2006

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

   signal TB_CLEAR : std_logic;
   signal   TB_CLK : std_logic;
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

   component TIMEBASE
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
   end component;

begin
   UUT : TIMEBASE
      Port Map ( TB_100us=>TB_100us, TB_10us=>TB_10us, TB_1ms=>TB_1ms,
                 TB_1us=>TB_1us, TB_200us=>TB_200us, TB_20us=>TB_20us,
                 TB_2ms=>TB_2ms, TB_2us=>TB_2us, TB_500us=>TB_500us,
                 TB_50us=>TB_50us, TB_5ms=>TB_5ms, TB_5us=>TB_5us,
                 TB_CLEAR=>TB_CLEAR, TB_CLK=>TB_CLK );

-- *** Test Bench - User Defined Section ***
   TB : process
   begin
      wait; -- will wait forever
   end process;
-- *** End Test Bench - User Defined Section ***

end behavior;

