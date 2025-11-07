program ex050;
var
    num, d, soma: longint;

begin
    soma := 0;
    read(num, d);
    while((num mod d) = 0) do
    begin
        soma := soma + 1;
        num := num div d;
    end;
    writeln(soma);
end.