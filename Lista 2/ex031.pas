program ex31;
var
    sm: real;

begin
    read(sm);
    writeln(sm:0:0);
    if (sm <= 200) then
        writeln('0');
    if (sm > 200) AND (sm <= 400) then 
        writeln('20%');
    if (sm > 400) AND (sm <= 600) then 
        writeln('30%');
    if (sm > 600) then 
        writeln('40%');
end.