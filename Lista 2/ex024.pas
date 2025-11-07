program ex24;
var
    ano, idade: integer;

begin
    read(ano);
    idade := 2020 - ano;
    writeln(idade);
    if (idade >= 16) then
        writeln('SIM')
    else
        writeln('NAO');
    if (idade >= 18) then
        writeln('SIM')
    else
        writeln('NAO')
end.