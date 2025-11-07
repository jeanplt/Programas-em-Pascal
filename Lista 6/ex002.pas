program ex2;
var
    num: longint;

function eh_binario(ValorNumero: longint): boolean;
var validador: integer;
begin
    validador := 1;
    while (ValorNumero > 0) and validador do
    begin
        if (ValorNumero mod 10 <> 0) and (ValorNumero mod 10 <> 1) then
            validador := 0;
            ValorNumero := ValorNumero div 10;
    end;
    if (validador = 1) then eh_binario := true
    else eh_binario := false;
end;

begin
    read(num);
    if eh_binario(num) then writeln('sim') else writeln ('nao');
end.