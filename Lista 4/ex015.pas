program ex015;
var
    num, mult, soma, form: integer;

begin
    soma := 0;
    read(num);
    form := 1;
    mult := num * 37;
    while(mult div form) <> 0 do
    begin
        soma := soma + (mult mod 10) * form;
        mult := mult div 10;
    end;
    if (soma = num) then writeln('SIM')
    else writeln('NAO');
end.