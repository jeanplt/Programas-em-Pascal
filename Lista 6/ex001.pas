program contrario;
var n,m: longint;

function contrario(n1, n2: longint):boolean;
var numFormatado: longint;
begin
    numFormatado := 0;
    while (n1 <> 0) do
    begin
        numFormatado := (numFormatado * 10) + (n1 mod 10);
        n1 := n1 div 10;
    end;
    if (n2 = numFormatado) then contrario := true
    else contrario := false;
end;


begin
    read (n,m);
    if contrario (n,m) then
        writeln (n,' eh o contrario de ',m)
    else
        writeln (n,' nao eh o contrario de ',m);
end.