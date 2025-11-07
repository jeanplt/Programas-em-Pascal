program ex30;
var
    c, q: integer;
    p: real;

begin
    read(c, q);
    if (c = 1001) then
        p := q * 5.32;
    if (c = 1324) then
        p := q * 6.45;
    if (c = 6548) then
        p := q * 2.37;
    if (c = 987) then
        p := q * 5.32;
    if (c = 7623) then
        p := q * 6.45;
    if (c <> 1001) AND (c <> 1324) AND (c <> 6548) AND (c <> 987) AND (c <> 7623) then
        writeln('ERRO')
    else
        writeln(p:0:2);
end.