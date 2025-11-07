program ex119;
var
    k, ak, r, n, an: double;

begin
    read(k, ak, r, n);
    an := ak + (n - k) * r;
    writeln(an:0:0);
end.