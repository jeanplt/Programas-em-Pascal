program ex41;
var
    fib, n, l, contF, soma: integer;

begin
    soma := 0;
    contF := 1;
    read(l);
    while(l > 0) do
    begin
        if(contF = 1) then
        begin
            fib := 0;
            n := fib;
        end;
        if(contF = 2) then
        begin
            fib := 1;
        end;
        if(contF = 3) then
        begin
            fib := fib + n;
            n := 1;
        end;
        if(contF > 3) then
        begin
            fib := fib + n;
            n := fib - n;
        end;
        contF := contF + 1;
        soma := soma + fib;
        l := l - 1;
    end;
    writeln(soma);
end.