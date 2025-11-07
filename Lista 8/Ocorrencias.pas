program ocorrencias;
type matriz = array[1..200,1..200] of integer;
var
    matrizSequencias: matriz;
    x, y: integer;


// Adiciona as sequências de números
procedure adicionaSequencias(var m: matriz; tam1, tam2: integer);
var i, num: integer;
begin
    for i:=1 to tam1 do
    begin
        read(num);
        m[1][i] := num; 
    end;
    for i:=1 to tam2 do
    begin
        read(num);
        m[2][i] := num; 
    end;
end;


// Imprime matriz
procedure imprimeMatriz(m: matriz; lin, col: integer);
var i, j: integer;
begin
    for i:=1 to lin do
    begin
        for j:=1 to col do
        begin
            write(m[i][j], ' ');
        end;
        writeln();
    end;
end;


// Verifica quantas vezes a sequência de uma linha se repete na outra
function verificaRepeticao(m: matriz; tam1, tam2: integer):integer;
var 
    i, c: integer;
    validador: boolean;
begin
    verificaRepeticao := 0;
    for i:=1 to (tam1 - tam2 + 1) do
    begin
        validador := true;
        c := 1;
        while(c <= tam2) and (validador) do
        begin
            if(m[2][c] <> m[1][i + c - 1]) then validador := false;
            c := c + 1;
        end;
        if validador then verificaRepeticao := verificaRepeticao + 1;
    end;
end;


// Programa principal
begin
    read(x, y);
    adicionaSequencias(matrizSequencias, x, y);
    writeln(verificaRepeticao(matrizSequencias, x, y));
end.