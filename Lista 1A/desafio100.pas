program desafio100;
var
    n, p1, p2, temp: integer;

begin
    read(n);
    p1 := n div 100;
    p2 := n mod 100;
    temp := p1 + p2;
    if (temp * temp = n) then
        writeln('SIM')
    else
        writeln('NAO');
end.