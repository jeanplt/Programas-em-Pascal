program ex049;
var
    f1, f2, f3, f4, num, somaf: real;

begin
    f1 := 0;
    f2 := 0;
    f3 := 0;
    f4 := 0;
    read(num);
    while(num <> 0) do
    begin
        if(num <= 1350) then
            f1 := f1 + 1;
        if(num > 1350) AND (num <= 4050) then
            f2 := f2 + 1;
        if(num > 4050) AND (num <= 9000) then
            f3 := f3 + 1;
        if(num > 9000) then
            f4 := f4 + 1;
        read(num);
    end;
    somaf := f1 + f2 + f3 + f4;
    writeln((f1 / somaf * 100):0:2);
    writeln((f2 / somaf * 100):0:2);
    writeln((f3 / somaf * 100):0:2);
    writeln((f4 / somaf * 100):0:2);
end.