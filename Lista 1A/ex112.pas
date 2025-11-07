program ex112;
var
    n: integer;

begin
    read(n);
    if (n mod 2) = 1 then
        writeln('IMPAR')
    else
        writeln('PAR');
end.