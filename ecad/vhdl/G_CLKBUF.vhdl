entity G_CLKBUF is
    port
    (
        I : in bit ;
        O : out bit
    ) ;
end G_CLKBUF ;

architecture rtl of G_CLKBUF is
    signal s : bit ;
begin
    O <= I ;
end rtl ;