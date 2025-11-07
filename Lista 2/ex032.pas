program ex032;
var
    sal, nsal: real;
    cod: integer;

begin
    read(sal, cod);
    if (cod = 101) then
        nsal := sal * 1.1;
    if (cod = 102) then
        nsal := sal * 1.2;
    if (cod = 103) then
        nsal := sal * 1.3;
    if (cod <> 101) AND (cod <> 102) AND (cod <> 103) then
        nsal := sal * 1.4;
    writeln(sal:0:2);
    writeln(nsal:0:2);
    writeln((nsal - sal):0:2);
end.