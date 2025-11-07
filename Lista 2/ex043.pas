program ex43;
var
    n, impar, soma: longint;

begin
    impar := 1;
    soma := 0;
    read(n);
    while (n > 0) do
    begin
        soma := soma + impar;
        impar := impar + 2;
        n := n -1;
    end;
    writeln(soma);
end.