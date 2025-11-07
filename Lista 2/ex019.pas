program ex19;
var
    n1, n2, n3, faltas, media: real;

begin
    read(n1, n2, n3, faltas);
    media := (n1 + n2 + n3) / 3;
    if (media < 4) OR (faltas >=10) then
        writeln('NAO');
    if (media >= 4.0) AND (media < 7) AND (faltas < 10) then
        writeln('TALVEZ');
    if (media >= 7) AND (faltas < 10) then
        writeln('SIM');
end.