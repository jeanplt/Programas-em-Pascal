program ex022;
var
    x, y: integer;

begin
    read(x, y);
    if (x > 0) AND (y > 0) then
        writeln('1');
    if (x < 0) AND (y > 0) then
        writeln('2');
    if (x < 0) AND (y < 0) then
        writeln('3');
    if (x > 0) AND (y < 0) then
        writeln('4');
    if (x = 0) AND (y <> 0) then
        writeln('Y');
    if (x <> 0) AND (y = 0) then
        writeln('X');
    if (x = 0) AND (y = 0) then
        write('O');
end.