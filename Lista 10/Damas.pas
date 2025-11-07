program damas;
type
    matriz = array[1..200,1..200] of integer;
var
    matrizDamas: matriz;


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


// Procedure das possíveis jogadas para tomar
procedure tomar(m: matriz);
var
    i, j, qt: integer;
begin
    qt := 0;
    write('tomar: ');
    for i:=1 to 8 do
    begin
        for j:=1 to 8 do
        begin
            if(m[i][j] = -1) then
            begin
                if(m[i+1][j+1] = 1) or (m[i+1][j-1] = 1) then
                begin
                    write(i, '-', j, ' ');
                    qt := qt + 1;
                end;
            end;
        end;
    end;
    if qt = 0 then write('0');
    writeln();
end;


// Procedure mover
procedure mover(m: matriz);
var
    i, j, qt: integer;
begin
    qt := 0;
    write('mover: ');
    for i:=1 to 8 do
    begin
        for j:=1 to 8 do
        begin
            if(m[i][j] = -1) then
            begin
                if((m[i+1][j+1] = 0) and (j+1 < 8) and (m[i+1][j+1] <> 1)) or ((m[i+1][j-1] = 0) and (j-1 > 0) and (m[i+1][j+1] <> 1))  then
                begin
                    write(i, '-', j, ' ');
                    qt := qt + 1;
                end; 
            end;
        end;
    end;    
    if qt = 0 then write('0');
    writeln;
end;


// Procedure ficar
procedure ficar(m: matriz);
var
    i, j, qt: integer;
begin
    write('ficar: ');
    qt := 0;
    for i:=1 to 8 do
        for j:=1 to 8 do
            if(m[i][j] = -1) then
               if((m[i+1][j+1] = -1) or (j+1=9)) and ((m[i+1][j-1] = -1) or (j-1=0)) then
               begin
                    qt := qt + 1;
                    write(i, '-', j, ' ');
               end;
    if qt = 0 then write('0');
    writeln();
end;


// Programa principal
begin
    leituraMatriz(matrizDamas, 8, 8);
    tomar(matrizDamas);
    mover(matrizDamas);
    ficar(matrizDamas);
end.
