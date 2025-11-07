program desafio101;
var
    n, temp, l: integer;

begin
    read(n);
    temp := (n div 100 mod 10) + (n div 10 mod 10 * 10) + (n mod 10 * 100);
    writeln(temp);
end.