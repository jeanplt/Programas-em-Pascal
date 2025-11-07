program numperfeito;
var
    num, d, soma, k: integer;

begin
    num := 6;
    read(k);
    while (k > 0) do
    begin
        soma := 0;
        d := 1;
        while (d <= (num / 2)) do
        begin
            if (num mod d) = 0 then
            begin
                soma := soma + d;
            end;
            d := d + 1;
        end;
        if (soma = num) then 
        begin
            write(num, ' ');
            k := k - 1;
        end;
        num := num + 1;
    end;
end.