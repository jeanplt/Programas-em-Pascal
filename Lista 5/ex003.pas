program ex003;
var
    num, den, i: integer;
    soma: real;

begin
    i := 5;
    soma := 0;
    num := 1;
    den := 1;
    while(i > 0) do
    begin
        soma := soma + (num / den);
        num := num + den;
        den := den + num;
        i := i - 1;
    end;
    writeln(soma:0:2);
end.