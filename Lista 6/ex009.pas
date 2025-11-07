program ex9;
var
    i, n, prova1, prova2, prova3, media: longint;

function calcular_media(Nota1, Nota2, Nota3: longint): longint;
begin
    calcular_media := (Nota1 + (Nota2 * 2) + (Nota3 * 3)) div 6;
end;

function aprovado(media: real): boolean;
begin
    if (media >= 50) then aprovado := true
    else aprovado := false;
end;

begin
    read (n);
    for i := 1 to n do
    begin
        read (prova1, prova2, prova3);
        media := calcular_media(prova1, prova2, prova3);
        if aprovado (media) then
            writeln ('aluno ',i,' aprovado com media: ', media)
        else
            writeln ('aluno ',i,' reprovado com media: ', media);
    end;
end.