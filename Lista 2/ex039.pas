program ex39;
var
    n, l, prod: longint;

begin
    prod := 0;
    l := 2;
    read(n);
    while (n > 0) do
    begin
        if (prod = 0) then
            prod := 1 * l
        else
            prod := l * prod;
        l := l + 2;
        n := n - 1;
    end;
    writeln(prod);
end.