program elementosNulos;
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


// Verifica quantidade de linhas nulas
function linhasNulas(m: matriz; lin, col: integer):integer;
var
    i, j: integer;
    validador: boolean;
begin
    linhasNulas := 0;
    for i:=1 to lin do
    begin
        validador := true;
        for j:=1 to col do
        begin
            if(m[i][j] <> 0) then validador := false;
        end;
        if validador then linhasNulas := linhasNulas + 1;
    end;
end;


// Verifica quantidade de linhas nulas
function colunasNulas(m: matriz; lin, col: integer):integer;
var
    i, j: integer;
    validador: boolean;
begin
    colunasNulas := 0;
    for j:=1 to col do
    begin
        validador := true;
        for i:=1 to lin do
        begin
            if(m[i][j] <> 0) then validador := false;
        end;
        if validador then colunasNulas := colunasNulas + 1;
    end;
end;


// Programa principal
begin
    read(m, n);
    leituraMatriz(matrizNumeros, m, n);
    writeln('linhas: ', linhasNulas(matrizNumeros, m, n));
    writeln('colunas: ', colunasNulas(matrizNumeros, m, n));
end.