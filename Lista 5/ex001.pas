program ex001;
var
    num, den, i: integer;
    soma: real;

begin
    soma := 0;
    num := 1000;
    den := 1;
    read(i);
    while(i > 0) do
    begin
        if(i mod 2 = 0) or (den = 1)then soma := soma + (num / den)
        else soma := soma - (num / den);
        num := num - 3;
        den := den + 1;
        i := i - 1;
    end;
    writeln(soma:0:2);
end.