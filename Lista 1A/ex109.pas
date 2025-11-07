program ex109;
var
    n: longint;

begin
    read(n);
    if (n > -15) AND (n < 30) then
        writeln(n * (-1))
    else
        writeln(n);
end.