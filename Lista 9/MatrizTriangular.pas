program matriz_triangular;
type matriz = array[1..200,1..200] of integer;
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


// Verifica se a matriz é triangular
function eh_triangular(m: matriz; lin, col: integer): boolean;
var 
    i, j: integer;
    validador: boolean;
begin
    eh_triangular := false;
    i := 1;
    validador := true;
    // Verifica se é triangular inferior
    while(i < lin) and validador do
    begin
        j := 1 + i;
        while(j <= col) and validador do
        begin
            if(m[i][j] <> 0) then validador := false; 
            j := j + 1;
        end;
        i := i + 1;
    end;
    if validador = true then eh_triangular := true;
    
    i := 2;
    j := 1;
    validador := true;
    // Verifica se é triangular superior
    while(i <= lin) and validador do
    begin
        while(j < i) and validador do
        begin
            if(m[i][j] <> 0) then validador := false; 
            j := j + 1;
        end;
        i := i + 1;
    end;
    if validador = true then eh_triangular := true;
end;


// Programa principal
begin
    read(n);
    leituraMatriz(matrizNumeros, n, n);
    if(eh_triangular(matrizNumeros, n, n)) then writeln('sim') 
    else writeln('nao');
end.