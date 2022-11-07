program modul4_no3;
uses crt;
var i, j, k, l : integer;

begin
clrscr;

    for i := 1 to 4 do
        begin
            for j := 4 downto i do
                write('  ');
            for j := 1 to i - 1 do
                write('* ');
            for j := 1 to i do 
                write('* ');
        writeln;
        end;
    for k := 4 downto 2 do
        begin
            for l := 4 downto k - 1 do
                write('  ');
            for l := 1 to k - 1 do
                write('* ');
            for l := 1 to k - 2 do
                write('* ');
        writeln;
        end;
        readln;
end.