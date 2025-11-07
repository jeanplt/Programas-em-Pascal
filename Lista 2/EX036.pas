program ex36;
var
    tipo, area: integer;

begin
    read(tipo, area);
    if (tipo = 1) then
        writeln((area / 2):0:0, ' caixas');
    if (tipo = 2) then
        writeln((area / 3):0:0, ' caixas');
    if (tipo = 3) then
        writeln((area / 4):0:0, ' caixas');
end.