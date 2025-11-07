program ex4;
var
    i: longint;

function eh_primo(num: longint): boolean;
var d: longint;
begin
    d := 1;
    eh_primo := true;
    while (d <= (num / 2)) do
    begin
        if (num mod d = 0) and (d <> 1) and (d <> num) then eh_primo := false;
        d := d + 1;
    end;
end;

begin
    for i := 1 to 10000 do
        if eh_primo (i) then
            writeln(i);
end.