program ex092;
var
    p1, p2, p3: integer;
    res: real;

begin
    read(p1, p2, p3);
    res := (p1 + (p2 * 2) + (p3 * 3)) / 6;
    writeln(res:0:0);
end.