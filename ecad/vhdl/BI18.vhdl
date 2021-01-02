entity BI18 is
    port
    (
        Z0 : out std_logic_vector (7 downto 0) ;
        XB0 : in std_logic_vector (7 downto 0) ;
        A0 : in std_logic_vector (7 downto 0) ;
        OE : in bit
    ) ;
end BI18 ;

architecture rtl of BI18 is
    signal s : bit ;
begin
    Z0 <= XB0 when OE = '1' else "ZZZZZZZZ" ;
    XB <= A0 when OE = '0' else "ZZZZZZZZ" ;
end rtl ;