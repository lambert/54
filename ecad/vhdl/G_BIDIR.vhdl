entity G_BIDIR is
    port
    (
        Z0 : out bit ;
        XB0 : in bit ;
        A0 : in bit ;
        OE : in bit
    ) ;
end G_BIDIR ;

architecture rtl of G_BIDIR is
    signal s : bit ;
begin
    Z0 <= XB0 when OE = '1' else 'Z' ;
    XB <= A0 when OE = '0' else 'Z';
end rtl ;