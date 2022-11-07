program modul4_no2;
uses crt;
var
i, j : integer;

begin
clrscr;
    for i := 1 to 5 do
    begin
        for j := 1 to i do
            if i mod 2 = 1 then
                begin
                    write('* ')
                end
            else
                begin
                    write(i,' ');
                end;
    writeln;
    end;
    readln;
end.