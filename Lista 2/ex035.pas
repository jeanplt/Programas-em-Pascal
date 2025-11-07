program ex35;
var
    salario: real;

begin
    read(salario);
    if (salario >= 540) AND (salario <= 1424) then
        writeln('1 ', '0.00');
    if (salario > 1424) AND (salario <= 2150) then
        writeln('2 ', (salario * 0.075):0:2);
    if (salario > 2150) AND (salario <= 2866) then
        writeln('3 ', (salario * 0.15):0:2);
    if (salario > 2866) AND (salario <= 3582) then
        writeln('4 ', (salario * 0.225):0:2);
    if (salario > 3582) then
        writeln('5 ', (salario * 0.275):0:2);
    if (salario < 540) then
        writeln('NAO');
end.