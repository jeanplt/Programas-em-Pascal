program ex082;
var
    s, m, h: longint;

begin
    read(s);
    m := s div 60;
    h := m div 60;
    m := m mod 60;
    s := s mod 60;
    writeln(h, ':', m, ':', s);
end.