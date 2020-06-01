program durasi_tahun;       {menghitung jarak antara dua tanggal}
uses crt;

type
waktu = Record
yy : Integer;                       // GILAAA INI RUMUSNYA MIKIRNYAAA LAMA BGT !!!!
mm : integer;
dd : integer;
end;

Var
 total1 : Integer;
 total2 : LongInt;
 total3 : longint;
 sisa : integer;
 y1 : waktu ;
 y2 : waktu ;
 y3 : waktu ;
 m1 : integer ;
 m2 : integer ;

Begin

writeln('masukkan tanggal pertama');
readln(y1.dd,y1.mm,y1.yy) ;
writeln('masukkan tanggal kedua');
readln(y2.dd,y2.mm,y2.yy) ;

total1 := y2.yy - ( y1.yy - 1 ) ;  {menghitung selisih tahun}
total2 := total1 * 360 ;    {menghitung jumlah selisih tahun dalam hari}
m1 := ( (y1.mm - 1) * 30 ) + ( y1.dd ) ;     {menghitung jumlah hari sebelum tanggal awal}
m2 := ((12 - y2.mm)* 30 ) + (30 - y2.dd);        {menghitung jumlah hari setelaha tanggal akhir}
total3 :=  total2 - (m1 + m2);                   {menghitung jumlah hari dalam rentang waktu tersebut}

y3.yy := total3 div 360 ;
sisa := total3 mod 360 ;
y3.mm := sisa div 30 ;
y3.dd := sisa mod 30 ;

writeln('ini dia selisih tanggalnya' );
Delay(5000);
writeln(total3, ' hari') ;
Delay(5000);
writeln(y3.dd, ' hari ', y3.mm, ' bulan ',y3.yy, ' tahun ');

												
end.
