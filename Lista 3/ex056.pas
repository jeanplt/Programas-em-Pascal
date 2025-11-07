program ex056;
var
    n, m, num, cont: integer;

begin
    cont := 0;
    read(n, m);
    if (n mod 2) = 0 then num := n + 2
    else num := n + 1;
    while (num < m) do
    begin
        cont := cont + num;
        num := num + 2;
    end;
    writeln(cont);
end.