entity BI14 is
    port
    (
        Z0 : out std_logic_vector (3 downto 0) ;
        XB0 : in std_logic_vector (3 downto 0) ;
        A0 : in std_logic_vector (3 downto 0) ;
        OE : in bit
    ) ;
end BI14 ;

architecture rtl of BI14 is
    signal s : bit ;
begin
    Z0 <= XB0 when OE = '1' else "ZZZZ" ;
    XB <= A0 when OE = '0' else "ZZZZ" ;
end rtl ;