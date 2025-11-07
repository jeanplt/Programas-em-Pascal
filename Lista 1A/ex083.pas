program ex083;
var
    id, a, m, d: integer;

begin
    read(id);
    a := id div 365;
    m := (id mod 365) div 30;
    d := (id mod 365) mod 30;
    writeln(a, m:2, d:3);
end.