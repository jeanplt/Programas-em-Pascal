program ex113;
var
    s, p: longint;

begin
    read(s, p);
    if p/s <= 30/100 then
        writeln('SIM')
    else
        writeln('NAO');
end.