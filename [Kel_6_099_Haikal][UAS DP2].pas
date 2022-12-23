program Convert;
uses SysUtils,crt;      

type
  pengguna = record
    nama : string;
    username : string;
    password : string;
  end;

var
  pilihan, i, pass, opsi, des : integer;
  daftar_pengguna : array[1..100] of pengguna;
  bin, username_input, password_input : string;

// biner to desimal

function BinToDes(bin: string ): integer;
var
  a: integer;
  hasil: integer;
begin
  hasil := 0;
  for a := 1 to Length(bin) do
  begin
    hasil := hasil * 2;
    if bin[a] = '1' then
      hasil := hasil + 1;
  end;
  BinToDes := hasil;
end;

// desimal to biner

function DesToBin(desimal: integer): string;
var
  bin: string;
begin
  bin := '';
  while desimal > 0 do
  begin
    bin := IntToStr(desimal mod 2) + bin;
    desimal := desimal div 2;
  end;
  DesToBin := bin;
end;

// Daftar dan Login

begin
i := 0; 

repeat
   clrscr;
  writeln('Menu:');
  writeln('1. Daftar');
  writeln('2. Login');
  write('Masukkan pilihan anda: ');
  readln(pilihan);

  case pilihan of
    1: begin
         i := i + 1;
         writeln('-------------------------');
         write('Masukkan nama: ');
         readln(daftar_pengguna[i].nama);
         write('Masukkan username: ');
         readln(daftar_pengguna[i].username);
         write('Masukkan password: ');
         readln(daftar_pengguna[i].password);
         writeln('Pendaftaran berhasil!');
       end;
    2: begin
         writeln('-------------------------');
         write('Masukkan username: ');
         readln(username_input);
         write('Masukkan password: ');
         readln(password_input);
         
         for i := 1 to 100 do
            
           if (daftar_pengguna[i].username = username_input) and (daftar_pengguna[i].password = password_input) then
           begin
             writeln('-------------------------');
             writeln('Login berhasil!');
             delay(1000);
             writeln('Selamat datang, ', daftar_pengguna[i].nama, '!');
             readln;
             pass := 1;
             break;
           end
           else if (i = 100) and (daftar_pengguna[i].username <> username_input) and (daftar_pengguna[i].password <> password_input) then
             writeln('Username atau password salah!');
             readln;
       end;
  end;
until (pass = 1);

// Menu

repeat
   clrscr;
  writeln('Main Menu:');
  writeln('1. biner to desimal');
  writeln('2. desimal to biner');
  
  write('Masukkan pilihan anda: ');
  readln(opsi);

  case opsi of 
    1: begin
         writeln('-------------------------');
         write('Masukkan biner: ');
          readln(bin);
          writeln('Desimal dari ',bin,' adalah: ',BinToDes(bin));
       end;
    2: begin
         writeln('-------------------------');         
         write('Masukkan desimal: ');
         readln(des);
         writeln('Biner dari ',des,' adalah: ',DesToBin(des));
       end;
  end;
readln;
until ((opsi = 1) or (opsi = 2));
// until (opsi=99);
end.