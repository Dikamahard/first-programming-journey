Program penghitung_pulsa;
Uses crt;
Type
  jam = Record
    hh : Integer;
    mm : Integer;
    ss : Integer;
  End;
Var
  j1 : jam;
  j2 : jam;
  j3 : jam;
  kode : String;
  biaya : Integer;
  tarif : Integer;
  pulsa : Integer;
  wilayah : String;
	durasi : integer;
	poin : integer;

Begin
  WriteLn('masukkan kode wilayah');
  Readln(kode);
  If kode = '02' Then
    Begin
      tarif := 150;
      pulsa := 60;
      wilayah := 'jakarta';
    End;
  If kode = '0751' Then
    Begin
      tarif := 250;
      pulsa := 30 ;
      wilayah := 'padang' ;
    End;
  If kode = '0737' Then
    Begin
      tarif := 375;
      pulsa := 25;
      wilayah := 'medan' ;
    End;
  If kode = '091' Then
    Begin
      tarif := 415 ;
      pulsa := 20;
      wilayah := 'balikpapan' ;
    End;
  If kode = '098' Then
    Begin
      tarif := 510;
      pulsa := 17 ;
      wilayah := 'ternate';
    End;
  WriteLn('masukkan jam mulai');
  Readln(j1.hh, j1.mm, j1.ss);
  WriteLn('masukkan jam selesai');
  Readln(j2.hh, j2.mm, j2.ss);
  If j2.ss >= j1.ss Then
		begin
     j3.ss := j2.ss - j1.ss;
	  end
	 Else
    Begin
      j3.ss := j2.ss + 60 - j1.ss;
      j2.mm := j2.mm - 1;
    End;
	
	 If j2.mm >= j1.mm Then
    j3.mm := j2.mm - j1.mm
  Else
    Begin
      j3.mm := j2.mm + 60 - j1.mm ;
      j2.hh := j2.hh - 1 ;
    End;

	if j2.hh >= j1.hh Then
	 j3.hh := j2.hh - j1.hh
	Else
	 Begin
		 j3.hh := j2.hh + 24 - j1.hh ;
		
	 end;

durasi := j3.hh * 3600 + j3.mm * 60 + j3.ss;
poin := durasi div pulsa;
biaya := poin * tarif;


writeln('durasi waktu = ', j3.hh, ':', j3.mm, ':', j3.ss, ' / ', durasi);
writeln('harga = ', biaya);

End.
