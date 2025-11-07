program ex048;
var
    a, b, prod: longint;

begin
    read(a, b);
    if (a > b) OR ((a mod 2) = 0) OR ((b mod 2) = 0) then
        writeln('erro')
    else
    begin
        prod := 1;
        while( a <= b) do
        begin
            prod := prod * a;
            a := a + 2;
        end;
    end;
    writeln(prod);
end.