program ex001;
type vetor = array[1..200] of real; 
var
    n: integer;
    somaP, somaI: real;
    vetNumeros: vetor;


procedure leiaNumeros(var v: vetor; var tam: integer);
var i: integer;
begin
    read(tam);
    for i := 1 to tam do
    begin
        read(v[i]);
    end;
end;


function somaPosicaoPares(v: vetor; tam: integer):real;
var i: integer;
begin
    somaPosicaoPares := 0;
    for i:=1 to tam do
    begin
        if ((i mod 2 = 0) and (v[i] > 0)) then somaPosicaoPares := somaPosicaoPares + v[i];
    end;
end;


function somaPosicaoImpares(v: vetor; tam: integer):real;
var i: integer;
begin
    somaPosicaoImpares := 0;
    for i:=1 to tam do
    begin
        if ((i mod 2 = 1) and (v[i] < 0)) then somaPosicaoImpares := somaPosicaoImpares + v[i];
    end;
end;


begin
    leiaNumeros(vetNumeros, n);
    somaP := somaPosicaoPares(vetNumeros, n);
    somaI := somaPosicaoImpares(vetNumeros, n);
    if somaI <> 0 then writeln((somaP / somaI):0:2)
    else if (somaI = 0) and (somaP <> 0) then writeln('divisao por zero')
    else writeln('vetor vazio');
end.


