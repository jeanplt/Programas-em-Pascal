program ex40;
var
    n, maior, menor: longint;
begin
    maior := 0;
    menor := 0;
    read(n);
    while (n <> 0) do
    begin
        if (n > maior) OR (maior = 0)then
            maior := n;
        if (n < menor) OR (menor = 0) then
            menor := n;
    read(n);
    end;
    writeln(maior, ' ', menor)
end.