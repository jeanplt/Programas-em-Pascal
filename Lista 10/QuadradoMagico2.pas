program quadrado2;
type matriz = array[1..200,1..200] of integer;
var
    matrizNumeros: matriz;
    m, n, qt: integer;


// Imprime matriz
procedure imprimeMatriz(m: matriz; lin, col: integer);
var 
    i, j: integer;
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
    validador :=  true;
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
    i := 1;
    while(i <= lin) and validador do
    begin
        somaTemp := somaTemp + m[i][i];
        i := i + 1;
    end;
    if somaTemp <> soma then quadradoMagico := false;

    // Verificar diagonal secundária
    somaTemp := 0;
    i := 1;
    while(i <= lin) and validador do
    begin
        somaTemp := somaTemp + m[i][col-i+1];
        i := i + 1;
    end;
    if somaTemp <> soma then quadradoMagico := false;
end;


// Cria matriz com elementos da parte de outra matriz
function matrizMenor(m: matriz; l_inicio, l_fim, c_inicio, c_fim: integer):matriz;
var 
    i, j, imenor, jmenor: integer;
begin
    imenor := 1;
    for i:=l_inicio to l_fim do
    begin
        jmenor := 1;
        for j:=c_inicio to c_fim do
        begin
            matrizMenor[imenor][jmenor] := m[i][j];
            jmenor := jmenor + 1;
        end;
        imenor := imenor + 1;
    end; 
end;


// Alterna quadrados na matriz
function alternaQuadrados(m: matriz; lin, col: integer):integer;
var
    countL, fimL, countC, fimC, i, j, k, n: integer;
    mTemp : matriz;
begin
    alternaQuadrados := 0;
    n := lin;
    for k:=2 to n do
    begin
        fimL := n - k + 1;
        fimC := n - k + 1;
        countL := 1;
        // Controle do range
        while(countL <= fimL) do
        begin
            countC := 1;
            while(countC <= fimC) do
            begin
                // Cria matriz temporaria para ser usado na função quadrado mágico
                mTemp := matrizMenor(m, countL, countL+k-1, countC, countC+k-1);
                if (quadradoMagico(mTemp, k, k)) then 
                begin
                    alternaQuadrados := alternaQuadrados + 1;
                end;
                countC := countC + 1;
            end;
            countL := countL + 1;
        end;
    end;
end;


// Programa principal
begin
    read(n);
    leituraMatriz(matrizNumeros, n, n);
    qt := alternaQuadrados(matrizNumeros, n, n);
    writeln(qt);
end.