program ex007;
var
    l, c: integer;

begin
    read(l, c);
    if ((l mod 2 = 1) and ((C mod 2) = 1)) then writeln('BRANCA')
    else if ((l mod 2 = 0) and ((C mod 2) = 0)) then writeln('BRANCA')
    else writeln('PRETA');
end.