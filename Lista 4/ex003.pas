program ex003;
var
    num, quad, valorQuadrado: integer;

begin
    valorQuadrado := 1;
    read(num);
    while(num <> 0) do
    begin
        read(quad);
        if(num * num) <> quad then valorQuadrado := 0;
        read(num);
    end;
    writeln(valorQuadrado);
end.