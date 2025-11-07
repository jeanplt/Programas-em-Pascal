program calcula_tangente;
var angulo: real;
const pi = 3.14159265359;

// Calcula o fatorial de um número inteiro
function fatorial(num: longint): longint;
var temp: longint;
begin
    temp := 1;
    while (num > 0) do
    begin
        temp := temp * num;
        num := num - 1;
    end;
    fatorial := temp;
end;


function calculaSeno(angX: real):real;
var 
    num, soma, termo: real;
    den, i, count: longint;
begin
    termo := 0;
    soma := 0;
    i := 1;
    count := 0;
    while (count < 4) do
    begin
        num := i * (angX);
        den := fatorial(2 * count + 1);
        termo := num / den;
        soma := soma + termo;
        writeln((num):0:5, ' / ', den, ' = ', termo:0:5);
        i := i * (-1);
        angX := angX * angX * angX;
        count := count + 1;
    end;
    calculaSeno := soma;
end;

(* coloque aqui o codigo da sua funcao que calcula o cosseno *)

(* coloque aqui o codigo da sua funcao que calcula a tangente *)

begin
    writeln(calculaSeno(1/2 * pi):0:5);
end.