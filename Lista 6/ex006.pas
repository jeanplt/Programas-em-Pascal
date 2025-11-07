program ex4;
var
    dia1, mes1, ano1, dia2, mes2, ano2: integer;

function eh_anterior(d1, m1, a1, d2, m2, a2: integer): boolean;
begin
    eh_anterior := true;
    if (a2 < a1) or ((a2 = a1) and (m2 < m1)) or ((a2 = a1) and (m2 = m1) and (d2 <= d1)) then 
        eh_anterior := false;
end;

begin
    read (dia1, mes1, ano1, dia2, mes2, ano2);
    if eh_anterior (dia1, mes1, ano1, dia2, mes2, ano2) then
        writeln ('a primeira data eh anterior')
    else
        writeln ('a primeira data nao eh anterior');
end.