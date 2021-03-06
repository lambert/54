-- Structural VHDL generated by gnetlist
-- Context clause
library IEEE;
use IEEE.Std_Logic_1164.all;
-- Entity declaration

ENTITY not found IS
END not found;


-- Secondary unit
ARCHITECTURE netlist OF not found IS
    COMPONENT FBDC
    END COMPONENT ;

    SIGNAL TB_5ms : Std_Logic;
    SIGNAL TB_2ms : Std_Logic;
    SIGNAL TB_1ms : Std_Logic;
    SIGNAL TB_500us : Std_Logic;
    SIGNAL TB_200us : Std_Logic;
    SIGNAL TB_100us : Std_Logic;
    SIGNAL TB_50us : Std_Logic;
    SIGNAL TB_20us : Std_Logic;
    SIGNAL TB_10us : Std_Logic;
    SIGNAL TB_5us : Std_Logic;
    SIGNAL TB_2us : Std_Logic;
    SIGNAL TB_1us : Std_Logic;
    SIGNAL TB_CLK : Std_Logic;
    SIGNAL TB_CLEAR : Std_Logic;
BEGIN
-- Architecture statement part
    FB104 : FBDC
    PORT MAP (
        1 => TB_CLEAR,
        2 => TB_CLK,
        3 => TB_500us,
        4 => TB_1ms,
        5 => TB_1ms,
        6 => TB_2ms,
        7 => OPEN,
        8 => TB_5ms);

    FB103 : FBDC
    PORT MAP (
        1 => TB_CLEAR,
        2 => TB_CLK,
        3 => TB_50us,
        4 => TB_100us,
        5 => TB_100us,
        6 => TB_200us,
        7 => OPEN,
        8 => TB_500us);

    FB102 : FBDC
    PORT MAP (
        1 => TB_CLEAR,
        2 => TB_CLK,
        3 => TB_5us,
        4 => TB_10us,
        5 => TB_10us,
        6 => TB_20us,
        7 => OPEN,
        8 => TB_50us);

    FB101 : FBDC
    PORT MAP (
        1 => TB_CLEAR,
        2 => TB_CLK,
        3 => TB_CLK,
        4 => TB_1us,
        5 => TB_1us,
        6 => TB_2us,
        7 => OPEN,
        8 => TB_5us);

-- Signal assignment part
END netlist;
