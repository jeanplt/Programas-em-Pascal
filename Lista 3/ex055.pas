program ex55;
var
    n, m, qt, i: longint;

begin
    i := 10;
    qt := 0;
    read(n, m);
    while (m * i) <> 0 do
    begin
        if(m mod i) = n then qt := qt + 1;
        m := m div i;
    end;
    if (qt > 0) then writeln(qt)
    else writeln('NAO');
end.