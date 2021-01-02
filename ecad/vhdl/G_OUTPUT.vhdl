entity G_OUTPUT is
    port
    (
        I : in bit ;
        O : out bit
    ) ;
end G_OUTPUT ;

architecture rtl of G_OUTPUT is
    signal s : bit ;
begin
    O <= I ;
end rtl ;