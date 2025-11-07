program ex116;
var
    n: longint;

begin
    read(n);
    if (n mod 2 <> 0) AND (n < -20) OR (n mod 2 = 0) AND (n > 7) then
        writeln('SIM')
    else
        writeln('NAO');
end.