entity G_BUF is
    port
    (
        A : in bit ;
        Y : out bit
    ) ;
end G_BUF ;

architecture rtl of G_BUF is
    signal s : bit ;
begin
    Y <= A ;
end rtl ;