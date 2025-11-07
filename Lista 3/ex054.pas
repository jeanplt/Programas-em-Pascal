program ex54;
var
    lado, med, qtlados: real;
    valida: integer;

begin
    valida := 1;
    qtlados := 0;
    read(lado);
    while(lado <> 0) do
    begin
        if(med = 0) then 
            med := lado
        else if(lado <> med) then
            valida := 0;
    qtlados := qtlados + 1;
    read(lado);
    end;
    if (valida = 0) or (qtlados < 3) then writeln('NAO')
    else writeln ('SIM');
end.