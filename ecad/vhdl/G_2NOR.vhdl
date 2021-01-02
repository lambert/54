entity G_2NOR is
    port
    (
        A : in bit ;
        B : in bit ;
        Q : out bit
    ) ;
end G_2NOR ;

architecture rtl of G_2NOR is
    signal s : bit ;
begin
    !Q <= A nor B ;
end rtl ;