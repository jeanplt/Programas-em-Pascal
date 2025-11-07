program repeticaoEmMatriz;
type matriz = array[1..200,1..200] of integer;
var
    matrizNumeros: matriz;
    m, n: integer;


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


// Busca elemento a partir de certo ponto na matriz
function buscaElementoMatrizPos(m: matriz; lin, col, pos_i, pos_j, num: integer): boolean;
var
    i, j: integer;
    achou: boolean;
begin
    buscaElementoMatrizPos := false;
    achou := false;
    i := pos_i;
    j := pos_j;
    while (i <= lin) and (achou = false) do
    begin
        while (j <= col) and (achou = false) do
        begin
            if m[i][j] = num then achou := true;
            j := j + 1;
        end;
        j := 1;
        i := i + 1;
    end;
    if achou then buscaElementoMatrizPos := true;
end;


// Verifica a repetição de valor na matriz
function verificaRepeticao(m: matriz; lin, col: integer): boolean;
var
    i, j, pos_i, pos_j, num: integer;
    achou: boolean;
begin
    i := 1;
    j := 1;
    achou := false;
    verificaRepeticao := false;
    while(i <= lin) and (not achou) do
    begin
        while (j <= col) and (not achou) do
        begin
            num := m[i][j];
            // Tratamento da posição inicial de busca
            if (j = col) then
            begin
                pos_j := 1;
                pos_i := pos_i + 1;
            end
            else
            begin
                pos_i := i;
                pos_j := j + 1;
            end;
            // Função que efetivamente verifica a repetição
            achou := buscaElementoMatrizPos(m, lin, col, pos_i, pos_j, num);
            j := j + 1;
        end;
        i := i + 1;
    end;
    if achou then verificaRepeticao := true;
end;


// Programa principal
begin
    read(m, n);
    leituraMatriz(matrizNumeros, m, n);
    if verificaRepeticao(matrizNumeros, m, n) then writeln('sim')
    else writeln('nao');
end.