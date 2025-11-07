program ex099;
var
    d, res: real;

begin
    read(d);
    d := d / 2;
    res := 4 * 3.14 / 3 * d * d * d;
    writeln(res:0:2);
end.