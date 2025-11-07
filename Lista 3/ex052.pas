program ex52;
var
    m, num, l, soma: integer;

begin
    soma := 0;
    read(m);
    l := m;
    while(l > 0) do
    begin
        read(num);
        soma := soma + num;
        l := l - 1;
    end;
    writeln(soma div m);
end.