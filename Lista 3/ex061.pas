program ex061;
var
    a, b, n: integer;

begin
    read(n);
    a := 1;
    b := n - 1;
    while (n > 1) do
    begin
        writeln(a, ' ', b);
        a := a + 1;
        b := b - 1;
        n := n - 1;
    end;
end.