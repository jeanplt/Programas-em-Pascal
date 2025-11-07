program ex78;
var
    placa: integer;
    format: double;

begin
    read(placa);
    format := (placa - (placa mod 1000)) div 1000;
    writeln(format:0:0);
end.