program ex25;
var
    dia, mes, ano, idade: integer;

begin
    read(dia, mes, ano);
    idade := 2020 - ano;
    if (mes < 4) then
        idade := idade + 1;
    if (mes = 4) AND (dia <= 29) then
        idade := idade + 1;
    writeln(idade);
end.