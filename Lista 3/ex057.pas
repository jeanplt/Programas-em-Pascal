program ex57;
var
    num, maior: longint;

begin
    maior := 0;
    read(num);
    while (num <> 0) do
    begin
        if ((num mod 7) = 0) and (num > maior) then maior := num;
        read(num);
    end;
    writeln(maior);
end.