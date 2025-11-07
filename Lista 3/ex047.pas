program ex47;
var
    soma, n: longint;

begin
    soma := 0;
    n := 1;
    while(n <= 50) do
    begin
        soma := soma + (n*n);
        n := n + 1;
    end;
    writeln(soma);
end.