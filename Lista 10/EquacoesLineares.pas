program equacoes;
type
    matriz = array[1..200,1..200] of integer;
    vetor = array[1..200] of integer;
var
    vetorR, vetorD: vetor;
    sistema: matriz;
    m, n: integer;


// Imprime valores de um vetor
procedure imprimaNumeros(v: vetor; tam: integer);
var 
    i: integer;
begin
    for i:=1 to tam do
    begin
       write(v[i], ' ');
    end;
    writeln();
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


// Adiciona valores no vetor resultado
procedure adicionaResultado(var v: vetor; tam: integer);
var i, num: integer;
begin
    for i:=1 to tam do
    begin
        read(num);
        v[i] := num;
    end;    
end;


// Adiciona valores no vetor direito
procedure adicionaDireito(var v: vetor; tam: integer);
var i, num: integer;
begin
    for i:=1 to tam do
    begin
        read(num);
        v[i] := num;
    end;    
end;


// Verifica se a equação tem solução
function temSolucao(m: matriz; lin, col: integer; vRes, vDir: vetor):boolean;
var i, j, sol: integer;
begin
    temSolucao := true;
    for i:=1 to lin do
    begin
        sol := 0;
        for j:=1 to col do
        begin
            sol := sol + (m[i][j] * vRes[j]);
        end; 
        if sol <> vDir[i] then temSolucao := false;
    end;
end;


// Programa principal
begin
    read(m, n);
    adicionaResultado(vetorR, n);
    leituraMatriz(sistema, m, n);
    adicionaDireito(vetorD, m);
    if temSolucao(sistema, m, n, vetorR, vetorD) then writeln('sim') else writeln('nao');
end.