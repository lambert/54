entity G_2OR is
    port
    (
        A : in bit ;
        B : in bit ;
        Q : out bit
    ) ;
end G_2OR ;

architecture rtl of G_2OR is
    signal s : bit ;
begin
    Q <= A or B ;
end rtl ;