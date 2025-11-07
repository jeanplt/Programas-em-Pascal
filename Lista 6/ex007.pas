program incrementa;
var n: longint;

procedure incrementa(num: longint);
begin
    n := n + 1;
end;

begin
    n:= 1;
    while n <= 10 do
    begin
        writeln (n);
        incrementa (n);
    end;
end.