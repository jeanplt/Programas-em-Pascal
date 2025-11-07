program calcula_tangente;
Uses math;
var angulo, tg: real;
var i:integer;

function fatorial (var a: integer): real;
var aux: integer;
begin
aux:=(a-1);
fatorial:=a;
    while(aux<>0)do
    begin
        fatorial := fatorial * aux;
        aux:=aux-1;
    end;
end;

function seno (var ang: real) : real;
var aux, n, d: real;
var a, sinal:integer;
begin
aux:=ang;
sinal:=-1;
a:=3;
n:=ang;
    for i:=2 to 6 do
    begin
        n:= n*ang*ang;
        d:=fatorial(a);
        a:=(2*i)+1;
        aux:= aux + (sinal*(n/d));
        sinal:=-sinal;
    end;
seno:=aux;
end;

function cosseno (var ang: real) : real;
var aux, n, d: real;
var a, sinal:integer;
begin 
aux:=1;
sinal:=-1;
a:=2;
n:=1;
    for i:=2 to 6 do
    begin
        n:= n*ang*ang;
        d:=fatorial(a);
        a:=i*2;
        aux:= aux + (sinal*(n/d));
        sinal:=-sinal;
    end;
cosseno:=aux;
end;

function existe_tangente (var angulo, a: real): boolean;
begin
    existe_tangente:= true;
    if((angulo=(1.5708))OR(angulo=4.7124))then
        existe_tangente := false
    else
        a := (seno(angulo))/(cosseno(angulo));
end;

begin
tg := 0;
    read(angulo);
    if existe_tangente(angulo, tg) then
        writeln (tg:0:3)
    else
        writeln ('nao existe tangente de ',angulo:0:3);
end.
