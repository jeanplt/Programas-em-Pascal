program ex006;
type vetor = array[1..200] of real;
var
    vetNumeros: vetor;
    num: real;
    cod, numE: integer;
    rem: boolean;


procedure insere(var v: vetor; var tam: integer; valor: real);
var 
    i, posTemp: integer;
    cancela: boolean;
begin
    cancela := false;
    if tam = 0 then
    begin
        v[1] := valor;
        tam := 1;
        cancela := true;
    end;
    posTemp := tam;
    i := 1;
    while (i <= tam) and (cancela = false) do
    begin
        if ((valor <= v[i]) and (valor > v[i - 1])) then
        begin
            while (posTemp >= i) do
            begin
                v[posTemp + 1] := v[posTemp];
                posTemp := posTemp - 1;
            end;
            v[i] := valor;
            tam := tam + 1;
            cancela := true;
        end;
        if (valor > v[tam]) then
        begin
            v[tam + 1] := valor;
            tam := tam + 1;
            cancela := true;
        end;
        i := i + 1;
    end;    
end;


function remove(var v: vetor; var tam: integer; valor: real):boolean;
var
    i, posTemp: integer;
begin
    remove := false;
    i := 1;
    while (i <= tam) and (remove = false) do
    begin
        if (v[i] = valor) then
        begin
            posTemp := i;
            while(posTemp < tam) do
            begin
                v[posTemp] := v[posTemp + 1];
                posTemp := posTemp + 1;
            end;
            v[tam] := 0;
            remove := true;
            tam := tam - 1;
        end;
        i := i + 1;
    end;
end;


procedure leiaNumeros(var v: vetor; var tam: integer);
var i: integer;
begin
    for i := 1 to tam do
    begin
        read(v[i]);
    end;
end;


procedure imprimaNumeros(v: vetor; tam: integer);
var i: integer;
begin
    for i:=1 to tam do
    begin
       write(v[i]:0:1, ' ');
    end;
    writeln();
end;


begin
    read(cod);
    while(cod <> 0) do
    begin
        if cod = 1 then
        begin
            read(num);
            insere(vetNumeros, numE, num);
            if numE > 200 then
            begin
                numE := 200;
                writeln('erro');
            end
            else imprimaNumeros(vetNumeros, numE);
        end
        else if cod = 2 then
        begin
            read(num);
            rem := remove(vetNumeros, numE, num);
            if rem and (numE > 0) then imprimaNumeros(vetNumeros, numE)
            else if rem and (numE = 0) then writeln('vazio')
            else writeln('erro');
        end;
        read(cod);
    end;
    if numE > 0 then imprimaNumeros(vetNumeros, numE) else writeln('vazio');
end.