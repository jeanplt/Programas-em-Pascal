program subsequencias;
type 
    matriz = array[1..200,1..200] of integer;
    vetor = array[1..200] of integer;
var
    vetorNumeros: vetor;
    qt: integer;


// Limpar vetor
procedure limpaVetor(var v: vetor; tam: integer);
var i: integer;
begin
    for i:=1 to tam do
    begin
        v[i] := 0;
    end;    
end;


// Lê e coloca numeros em um array
procedure leituraVetor(var v: vetor; var tam: integer);
var i: integer;
begin
    read(tam);
    for i := 1 to tam do
    begin
        read(v[i]);
    end;
end;


// Verifica subsequências
procedure subsequencias(v: vetor; tam: integer);
var
    vSeq: vetor;
    i, j, k, l, count, tamSeq, posMemoria, tamMemoria: integer;
    validador: boolean;
begin
    tamSeq := 0;
    j := 1;
    // Seleciona o primeiro valor a ser copiado para o vSeq
    for i:=j to tam do
    begin
        // Copia valores para o vSeq
        for k:=1 to tam do
        begin
            vSeq[k] := v[k + i - 1];
            tamSeq := tamSeq + 1;
            if(tamSeq > 1) then // Só compara se o tamanho for 2 ou mais
            begin
                count := tamSeq + i - 1;
                while(count <= tam - tamSeq) do
                begin
                    validador := true;
                    for l:=1 to tamSeq do
                    begin
                        if(vSeq[l] <> v[count + l]) then validador := false;
                        // Para visualizar as comparações
                        // writeln(vSeq[l], ' ', v[count + l]); 
                    end;
                    if validador and (tamSeq > tamMemoria) then 
                    begin
                        posMemoria := i;
                        tamMemoria := tamSeq;    
                    end;
                    count := count + 1;
                    // Traço para melhor organização das comparações
                    // writeln('----------------');
                end;
            end;
        end;
    limpaVetor(vetorNumeros, tamSeq);
    tamSeq := 0;
    end;
    if (tamMemoria > 1) then writeln(posMemoria, ' ', tamMemoria)
    else writeln('nenhuma');
end;


// Programa principal
begin
    leituraVetor(vetorNumeros, qt);
    subsequencias(vetorNumeros, qt);
end.