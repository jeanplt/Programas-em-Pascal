program ex21;
var
    num: integer;

begin
    read(num);
    if (num mod 7 = 0) AND (num mod 11 <> 0) then
        writeln('Multiplo exclusivamente de 7.');
    if (num mod 7 <> 0) AND (num mod 11 = 0) then
        writeln('Multiplo exclusivamente de 11.');
    if (num mod 7 = 0) AND (num mod 11 = 0) then
        writeln('Multiplo de 7 e de 11.');
    if (num mod 7 <> 0) AND (num mod 11 <> 0) then
        writeln('Nao e multiplo nem de 7 nem de 11.');
    

end.