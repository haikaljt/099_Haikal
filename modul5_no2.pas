Program Penjumlahan_Matriks;
Uses crt;
Type 
    larik = array[1..5,1..5] Of integer;
Var 
    matriks1, matriks2, hasil : larik;
    i, j, x1, y1, x2, y2 : integer;
Begin
    clrscr;
    write('Masukkan batas baris Matriks ke-1(Maks 5) : '); readln(x1);
    write('Masukkan batas kolom Matriks ke-1(Maks 5) : '); readln(y1);
    write('Masukkan batas baris Matriks ke-2(Maks 5) : '); readln(x2);
    write('Masukkan batas kolom Matriks ke-2(Maks 5) : '); readln(y2);
    clrscr;
    If (x1 <= 5) And (y1 <= 5) And (x1 = x2) And (y1 = y2) Then
    Begin
        For i := 1 To x1 Do
        Begin
            For j := 1 To y1 Do
            Begin
                write('Masukkan Elemen Matriks ke-1(',i,',',j,'): '); readln(matriks1[i, j]);
            End;
        End;
        writeln;
        For i := 1 To x2 Do
        Begin
            For j := 1 To y2 Do
            Begin
                write('Masukkan Elemen Matriks ke-2(',i,',',j,'): '); readln(matriks2[i, j]);
            End;
        End;
      
        writeln('Matriks Pertama');
        For i := 1 To x1 Do
        Begin
            For j := 1 To y1 Do
            Begin
                write(matriks1[i, j],' ');
            End;
            writeln;
        End;
        writeln;

        writeln('Matriks Kedua');
        For i := 1 To x2 Do
        Begin
            For j := 1 To y2 Do
            Begin
                write(matriks2[i, j],' ');
            End;
            writeln;
        End;
        writeln;

        For i := 1 To x1 Do
        Begin
            For j := 1 To y2 Do
            Begin
                hasil[i, j] := matriks1[i, j] + matriks2[i, j];
            End;
        End;
        writeln('Hasil Penjumlahan');
        For i := 1 To x1 Do
        Begin
            For j := 1 To y2 Do
            Begin
                write(hasil[i, j],' ');
            End;
            writeln;
        End;
    End

    Else If (x1 > 5)Or(y1 > 5) Then
        Begin
            write('Jumlah Baris dan Kolom maksimal 5');
        End
    Else
        Begin
            write('Matriks tidak dapat dijumlahkan karena ordo yang berbeda');
        End;
    readln;
End.