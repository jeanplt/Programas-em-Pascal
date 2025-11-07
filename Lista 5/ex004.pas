program ex004;
var
    num, den, i, l: longint;
    soma: real;

begin
    num := 1;
    den := 2;
    soma := 0;
    i := 1;
    while(i <= 10) do
    begin
        soma := soma + (num / den);
        if (i mod 2 = 1) or (i = 1) then
        begin
            den := den + 1;
            num := num + 2;
        end
        else
            den := den + 3;
            num := num + 1;
        i := i + 1;
    end;
    writeln(soma:0:2);
end.