program ex011;
var
    num, divs, qt_divs: longint;

begin
    qt_divs := 0;
    divs := 1;
    read(num);
    while(divs <= num) do
    begin
        if (num mod divs) = 0 then qt_divs := qt_divs + 1;
        divs := divs + 1;
    end;
    if (qt_divs = 2) then writeln('SIM')
    else writeln('NAO');
end.