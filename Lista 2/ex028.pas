program ex28;
var
    cel, fah: real;

begin
    read(fah);
    cel := (fah - 32) / 1.8;
    writeln(cel:0:2);
    if cel <= 0 then
        writeln('solido');
    if (cel > 0) AND (cel < 100) then
        writeln('liquido');
    if cel >= 100 then
        writeln('gasoso');
end.