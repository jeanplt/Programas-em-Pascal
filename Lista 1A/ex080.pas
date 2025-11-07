program ex080;
var
    x, y, res: real;

begin
    read(x,y);
    res := x/y + y/x;
    writeln(res:0:3);
end.