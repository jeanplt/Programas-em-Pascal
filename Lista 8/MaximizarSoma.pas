program maximizar;
type vetor = array[1..200] of integer;
var
    vetorNumeros: vetor;
    qt, somaMaxima: integer;


// Leitura valores vetor
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
    for i:=1 to tam do
    begin
       write(v[i], ' ');
    end;
    writeln();
end;


// Procedure maximizar soma
procedure maximizarSoma(v: vetor; tam: integer; var soma: integer);
var i, j, somaTeste: integer;
begin
    for i:=1 to tam do
    begin
        j := i;
        somaTeste := 0;
        for j:=j to tam do
        begin
            if(i = 1) and (j = 1) then 
            begin
                somaTeste := v[i];
                soma := somaTeste;
            end
            else
            begin
                somaTeste := somaTeste + v[j];
                if(somaTeste > soma) then soma := somaTeste;
            end;
        end;
    end;
end;

// Programa principal
begin
    leiaNumeros(vetorNumeros, qt);
    maximizarSoma(vetorNumeros, qt, somaMaxima);
    writeln(somaMaxima);
end.
