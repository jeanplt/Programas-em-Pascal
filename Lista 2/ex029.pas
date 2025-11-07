program ex29;
var
    i: integer;
    a, b, c: integer;

begin
    read(i, a, b, c);
    if (a > b) AND (a > c) then
        begin
            if (b > c) then
                begin
                    if (i = 1) then
                        writeln(c, ' ', b, ' ', a);
                    if (i = 2) then
                        writeln(a, ' ', b, ' ', c);
                    if (i = 3) then
                        writeln(c, ' ', a, ' ', b);
                end         
            else
                begin  
                    if (i = 1) then
                        writeln(b, ' ', c, ' ', a);
                    if (i = 2) then
                        writeln(a, ' ', c, ' ', b);
                    if (i = 3) then
                        writeln(b, ' ', a, ' ', c);
                end;
        end;
    if (b > a) AND (b > c) then
        begin
            if (a > c) then
                begin
                    if (i = 1) then
                        writeln(c, ' ', a, ' ', b);
                    if (i = 2) then
                        writeln(b, ' ', a, ' ', c);
                    if (i = 3) then
                        writeln(c, ' ', b, ' ', a);
                end         
            else
                begin  
                    if (i = 1) then
                        writeln(a, ' ', c, ' ', b);
                    if (i = 2) then
                        writeln(b, ' ', c, ' ', a);
                    if (i = 3) then
                        writeln(a, ' ', b, ' ', c);
                end;
        end;
    if (c > a) AND (c > b) then
        begin
            if (a > b) then
                begin
                    if (i = 1) then
                        writeln(b, ' ', a, ' ', c);
                    if (i = 2) then
                        writeln(c, ' ', a, ' ', b);
                    if (i = 3) then
                        writeln(a, ' ', c, ' ', b);
                end         
            else
                begin  
                    if (i = 1) then
                        writeln(a, ' ', b, ' ', c);
                    if (i = 2) then
                        writeln(c, ' ', b, ' ', a);
                    if (i = 3) then
                        writeln(a, ' ', c, ' ', b);
                end;
        end;
end.