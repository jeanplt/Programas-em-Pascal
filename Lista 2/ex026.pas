program ex26;
var
    a: integer;

begin
    read(a);
    if (a <= 6) then
        writeln('100')
    else
        writeln(80 + (15 * (a-3)));
end.