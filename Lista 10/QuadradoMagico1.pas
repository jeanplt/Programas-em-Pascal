program quadrado;
type matriz = array[1..200,1..200] of integer;
var
    matrizQuadrado: matriz;
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


// Verifica se é quadrado mágico
function quadradoMagico(m: matriz; lin, col: integer): boolean;
var 
    i, j, soma, somaTemp: integer;
    validador: boolean;
begin
    somaTemp := 0;
    soma := 0;
    quadradoMagico := true;
    i := 1;
    // Verificar linhas
    while(i <= lin) and validador do
    begin
        somaTemp := 0;
        for j:=1 to col do
        begin
            somaTemp := somaTemp + m[i][j];
        end;
        if i = 1 then soma := somaTemp 
        else if somaTemp <> soma then quadradoMagico := false;
        i := i + 1;
    end;
    
    // Verificar colunas
    j := 1;
    somaTemp := 0;
    while(j <= col) and validador do
    begin
        somaTemp := 0;
        for i:=1 to lin do
        begin
            somaTemp := somaTemp + m[i][j];
        end;
        if somaTemp <> soma then quadradoMagico := false;
        j := j + 1;
    end;

    // Verificar diagonal principal
    somaTemp := 0;
    i := 0;
    while(i <= lin) and validador do
    begin
        somaTemp := somaTemp + m[i][i];
        i := i + 1;
    end;
    if somaTemp <> soma then quadradoMagico := false;

    // Verificar diagonal secundária
    somaTemp := 0;
    i := 0;
    while(i <= lin) and validador do
    begin
        somaTemp := somaTemp + m[i][col-i+1];
        i := i + 1;
    end;
    if somaTemp <> soma then quadradoMagico := false;
end;


// Programa principal
begin
    read(n);
    leituraMatriz(matrizQuadrado, n, n);
    if quadradoMagico(matrizQuadrado, n, n) then writeln('sim') else writeln('nao');
end.