program ex106;
var
    n: longint;

begin
    read(n);
    if n >= 0 then
        writeln(n*n*n)
    else
        writeln(n*n);
end.