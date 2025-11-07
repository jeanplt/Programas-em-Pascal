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
    m[i][1] := qt;
    i := i + 1;
    while(qt <> 0) do
    begin
        for j:=1 to qt do
        begin
            read(num);
            m[i][j] := num;
        end;
        read(qt);
        m[i + 1][1] := qt;
        i := i + 2;
    end;
    
end;


// Imprime resultado
procedure imprimeResultado(m: matriz; var v_dig: vetor);
var i, lin: integer;
begin
    lin := 1;
    while(m[lin][1] > 0) do
    begin
        write('O: ');
        for i:=1 to m[lin][1] do
        begin
            write(m[lin + 1][i], ' ');
        end;
        writeln();
        write('C: ');
        for i:=1 to m[lin][1] do
        begin
            v_dig[m[lin + 1][i]] := v_dig[m[lin + 1][i]] + 1;
            if(v_dig[m[lin + 1][i]] = 1) then write(m[lin + 1][i], ' ');
        end;
        for i:=1 to m[lin][1] do
        begin
            v_dig[m[lin + 1][i]] := 0
        end;
        writeln();
        lin := lin + 2;
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


// Programa principal
begin
    insereDadosMatriz(matrizDados);
    imprimeResultado(matrizDados, vetorDigitos);
end.    