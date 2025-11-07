program permutacao;
type
    matriz = array[1..200,1..200] of integer;
    vetor = array[1..200] of integer;
var
    matrizNumeros: matriz;
    n: integer;


// Leitura de valores para dentro de uma matriz
procedure leituraMatriz(var m: matriz; lin, col: integer);
var 
    i, j, num: integer;
begin
    for i:=1 to lin do
    begin
        for j:=1 to col do
        begin
            read(num);
            m[i][j] := num;
        end;
    end;
end;


// Verifica se matriz é de permutação
function verificaPermutacao(m: matriz; lin, col: integer):boolean;
var
    v: vetor;
    i, j: integer;
begin
    verificaPermutacao := true;
    i := 1;
    while(i <= lin) and verificaPermutacao do
    begin
        j := 1;
        while(j <= col) and verificaPermutacao do
        begin
            // Verifica se os números são 1 ou 0
            if (m[i][j] = 0) or (m[i][j] = 1) then
            begin
                // Caso for 1, verifica se há mais um número na coluna (guardado no vetor)
                if (m[i][j] = 1) and (v[j] < 1) then
                begin
                    // Adiciona o 1 no vetor no índice da posição da coluna
                    v[j] := 1;
                end
                else
                if (m[i][j] = 1) and (v[j] = 1) then verificaPermutacao := false;
            end
            else verificaPermutacao := false;
            j := j + 1;
        end;
        i := i + 1;
    end;
end;


// Programa principal
begin
    read(n);
    leituraMatriz(matrizNumeros, n, n);
    if (verificaPermutacao(matrizNumeros, n, n)) then writeln ('sim') else writeln('nao');
end.