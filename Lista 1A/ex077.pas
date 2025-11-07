program ex077;
var
    placa: integer;
    format: double;

begin
    read(placa);
    format := placa div 100 mod 10;
    writeln(format:0:0);
end.