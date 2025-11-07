program testes;
type vetor = array[0..200] of real; 
var
    i, num: integer;
    somaP, somaI: real;
    vetNumeros: vetor;


function somaPosicaoPares(v: vetor; tam: integer):real;
var i: integer;
begin
    somaPosicaoPares := 0;
    for i:=0 to tam-1 do
    begin
        if ((i mod 2 = 0) and (v[i] > 0)) then 
        begin 
            somaPosicaoPares := somaPosicaoPares + v[i];
            writeln(i);
        end;
    end;
end;

function somaPosicaoImpares(v: vetor; tam: integer):real;
var i: integer;
begin
    somaPosicaoImpares := 0;
    for i:=0 to tam-1 do
    begin
        if ((i mod 2 = 1) and (v[i] < 0)) then 
        begin
            somaPosicaoImpares := somaPosicaoImpares + v[i];
        end; 
    end;
end;



begin
    for i:=0 to 18 do
    begin
        read(num);
        vetNumeros[i] := num; 
    end;
    somaP := somaPosicaoPares(vetNumeros, 19);
    writeln(somaP:0:2);
    somaI := somaPosicaoImpares(vetNumeros, 19);
    writeln(somaI:0:2);
    writeln((somaP / somaI):0:2);
end.
