entity G_2NAND is
    port
    (
        A : in bit ;
        B : in bit ;
        Q : out bit
    ) ;
end G_2NAND ;

architecture rtl of G_2NAND is
    signal s : bit ;
begin
    Q <= A nand B ;
end rtl ;