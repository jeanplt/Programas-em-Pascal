program ex003;
type vetor = array[1..200] of integer;
var
    vetorNumeros: vetor;
    qt: integer;


// Procedure que inverte a ordem do vetor
procedure inverteVetor(var v: vetor; tam: integer);
var
    i, j, temp: integer;
begin
    j := tam;
    for i:=1 to (tam div 2) do
    begin
        temp := v[i];
        v[i] := v[j];
        v[j] := temp;
        j := j - 1;
    end;
end;


// Procedure que verifica se é crescente
procedure ehCrescente(v: vetor; tam: integer);
var 
    validador: boolean;
    i, temp: integer;

begin
    validador := true;
    temp := 0;
    for i:=1 to tam do
    begin
        if (v[i] < temp) and (i <> 1) then validador := false;
        if (i = 1) then temp := v[i];
    end;
    if (validador) and (tam > 0) then writeln('sim') else if (tam > 0) then writeln('nao');
end;


// Lê números inteiros
procedure leiaNumeros(var v: vetor; var tam: integer);
var i: integer;
begin
    read(tam);
    for i := 1 to tam do
    begin
        read(v[i]);
    end;
end;


// Imprime valores de um vetor
procedure imprimaNumeros(v: vetor; tam: integer);
var i: integer;
begin
    if tam > 0 then
    begin
        for i:=1 to tam do
        begin
            write(v[i], ' ');
        end;
    end
    else write('vetor vazio');
    writeln();
end;


// Programa principal
begin
    leiaNumeros(vetorNumeros, qt);
    ehCrescente(vetorNumeros, qt);
    inverteVetor(vetorNumeros, qt);
    imprimaNumeros(vetorNumeros, qt);
end.