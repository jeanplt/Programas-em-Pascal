program ex005;
var
    num, den, i, temp: longint;
    soma: real;

begin
    temp := 0;
    soma := 0;
    num := 1;
    den := 3;
    i := 10;
    while(i > 0) do
    begin
        soma := soma + (num / den);
        temp := den;
        den := num * 2;
        num := temp * 2;
        i := i - 1;
    end;
    writeln(soma:0:2);
end.