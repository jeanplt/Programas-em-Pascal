program ex010;
var
    n, i, mult, ver: integer;

begin
    ver := 0;
    i := 1;
    mult := i * (i - 1) * (i + 1);
    read(n);
    while (mult <= n) do
    begin
        if mult = n then ver := 1;
        i := i + 1;
        mult := i * (i - 1) * (i + 1);
    end;
    writeln(ver);
end.