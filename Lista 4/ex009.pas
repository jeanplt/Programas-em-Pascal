program ex009;
var
    pa, pb, ta, tb, a: real;

begin
    a := 0;
    read(pa, pb, ta, tb);
    if (pa > pb) and (tb > ta) then
    begin
        ta := 1 + ta;
        tb := 1 + tb;
        while (pa > pb) do
        begin
            pa := pa * ta;
            pb := pb * tb;
            a := a + 1;
        end;
        writeln(a:0:0);
    end;
    if (pb > pa) and (ta > tb) then
    begin
        ta := 1 + ta;
        tb := 1 + tb;
        while (pb > pa) do
        begin
            pa := pa * ta;
            pb := pb * tb;
            a := a + 1;
        end;
        writeln(a:0:0);
    end;
    if (a = 0) then writeln('0');
end.