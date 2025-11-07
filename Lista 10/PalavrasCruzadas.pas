program palavras;
type matriz = array[1..200,1..200] of integer;
var
    jogo: matriz;
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


// Adiciona os números no começo de cada palavra cruzada
procedure palavraCruzada(var m: matriz; lin, col: integer);
var i, j, count: integer;
begin
    count := 1;
    for i:=1 to lin do
    begin
        for j:=1 to col do
        begin
            if(m[i][j] = 0) then
            begin
                if((((m[i][j-1] = -1) or (j-1 = 0)) and ((m[i][j+1] = 0) and (j+1<=col)))   or   ((((m[i-1][j] = -1)) or (i-1 = 0)) and ((m[i+1][j] = 0) and (i+1<=lin)))) then
                begin
                    m[i][j] := count;
                    count := count + 1;
                end;
            end;
        end;
    end;
end;


// Programa principal
begin
    read(m, n);
    leituraMatriz(jogo, m, n);
    palavraCruzada(jogo, m, n);
    imprimeMatriz(jogo, m, n);
end.