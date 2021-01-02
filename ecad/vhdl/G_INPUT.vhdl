entity G_INPUT is
    port
    (
        I : in bit ;
        O : out bit
    ) ;
end G_INPUT ;

architecture rtl of G_INPUT is
    signal s : bit ;
begin
    O <= I ;
end rtl ;