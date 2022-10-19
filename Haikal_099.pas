program tugas_menu;
uses crt;
var
    menu : integer;

begin
    clrscr;

    writeln('                       Menu Berantakan Cafe');
    writeln('1. Nasi Goreng ');
    writeln('2. Mie Goreng ');
    writeln('3. Soto Ayam ');
    writeln('4. Bakso ');
    writeln('5. Sate ');
    writeln;
    write('                    Pilih nomor menu makanan anda : ');
    readln(menu);

    case (menu) of
        1: writeln('Nasi Goreng Rp. 8000 ');
        2: writeln('Mie Goreng Rp. 10000 ');
        3: writeln('Soto Ayam Rp. 12000 ');
        4: writeln('Bakso Rp. 15000 ');
        5: writeln('Sate Rp. 13000 ');
    else 
        begin 
            writeln('Pilih nomor yang tersedia di menu');
        end;   
    end;

    readln;
end.