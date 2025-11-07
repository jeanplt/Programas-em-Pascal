program ex3;
var
    num: longint;

function converte_em_decimal(numero: longint): longint;
var num_Decimal, ordem_Binario: longint;
begin
    ordem_Binario := 1;
    num_Decimal := 0;
    while(numero > 0) do
    begin
        num_Decimal := num_Decimal + ordem_Binario * (numero mod 10);
        ordem_Binario := ordem_Binario * 2;
        numero := numero div 10;
    end;
    converte_em_decimal := num_Decimal;
end;

begin
    read(num);
    writeln(converte_em_decimal(num));
end.