entity G_INV is
    port
    (
        A : in bit ;
        YN : out bit
    ) ;
end G_INV ;

architecture rtl of G_INV is
    signal s : bit ;
begin
    YN <= !A ;
end rtl ;