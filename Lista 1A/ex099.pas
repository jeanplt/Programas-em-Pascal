program ex099;
var
    a, m, d: integer;

begin
    read(a, m, d);
    d := (a * 365) + (m * 30) + d;
    writeln(d);
end.