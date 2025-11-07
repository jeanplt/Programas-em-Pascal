program compactacao;
type 
    vetor = array[-200..200] of integer;
    matriz = array[1..200,1..200] of integer;
var
    matrizDados: matriz;
    vetorDigitos: vetor;

// Insere linhas com quantidades de colunas variadas
procedure insereDadosMatriz(var m: matriz);
var qt, i, j, num: integer;
begin
    i := 1;
    read(qt);
    while(qt <> 0) do
    begin
        for j:=1 to qt do
        begin
            read(num);
            m[i][j] := num;
        end;
        read(qt);
        i := i + 1;
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


begin
    insereDadosMatriz(matrizDados);
    imprimeMatriz(matrizDados, 5, 5);
end.