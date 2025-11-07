program ex013;
var
    i, j, k: integer;

begin
    read(i, j, k);
    if((j mod i) = 0) and ((k mod j) = 0) then writeln(i + j + k)
    else if(i = j - 1) and (i = k - 2) then writeln(k, ' ', j, ' ', i)
    else writeln(((i + k + j) / 3):0:0);
end.