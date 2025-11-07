program ex046;
var
    num, soma, res: real;
    p, somap: integer;

begin
    res := 0;
    soma := 0;
    somap := 0;
    read(num, p);
    while(num <> 0 ) do
    begin
        soma := soma + (num * p);
        somap := somap + p;
        read(num, p);
    end;
    res := soma / somap;
    writeln(res:0:2);
end.