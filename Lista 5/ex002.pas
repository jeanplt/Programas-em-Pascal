program ex002;
var
    num, den: integer;
    soma: real;

begin
    soma := 0;
    num := 1;
    read(den);
    den := den - 1;
    while(den > 0) do
    begin
        soma := soma + num / den;
        num := num + 1;
        den := den - 1;
    end;
    writeln(soma:0:2);
end.