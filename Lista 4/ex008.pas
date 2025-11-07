program ex008;
var
    qt, soma, num, numtemp: integer;

begin
    numtemp := 0;
    soma := 0;
    qt := 1;
    read(num);
    while(((num <> (numtemp * 2)) and (num <> (numtemp / 2))) or (qt = 1)) do
    begin
        numtemp := num;
        qt := qt + 1;
        soma := soma + num;
        read(num);
    end;
    soma := soma + num;
    writeln(qt, ' ', soma, ' ', numtemp, ' ', num);
end.