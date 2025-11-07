program ex033;
var
    l, m: integer;

begin
    read(l, m);
    if (l = 3) then
        writeln('TRIANGULO ', l * m);
    if (l = 4) then
        writeln('QUADRADO ', m * m);
    if (l = 5) then
        writeln('PENTAGONO');
    if (l < 3) OR (l > 5) then
        writeln('ERRO');
end.