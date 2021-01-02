entity G_2AND is
    port
    (
        A : in bit ;
        B : in bit ;
        Q : out bit
    ) ;
end G_2AND ;

architecture rtl of G_2AND is
    signal s : bit ;
begin
    Q <= A and B ;
end rtl ;