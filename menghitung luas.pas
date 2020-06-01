Program MENGHITUNG_LUAS;
Uses crt;
Var
  luas : String;
  x : Integer;
  y : Integer;
  s : Integer;
  p : Integer;
  l : Integer;
  a : Integer;
  t : Integer;
  r : Integer;
  jawaban1 : Integer;
  jawaban2 : Real;
Const
  phi = 3.14;
Begin
  Writeln('luas apa yg anda ingin hitung?' ) ;
  Writeln ('(persegi, persegi panjang, segitiga, lingkaran, trapesium)') ;
  Readln(luas);
  If luas = 'persegi' Then
    Begin
      Writeln('masukkan sisi?');
      Readln(s) ;
      jawaban1 := s*s ;
      Writeln('luas persegi = ',jawaban1) ;
    End
  Else
    If luas = 'persegi panjang' Then
      Begin
        Writeln ('masukkan panjang?') ;
        Readln(p) ;
        Writeln('masukkan lebar?') ;
        Readln(l) ;
        jawaban1 := p*l ;
        Writeln('luas persegi panjang = ',jawaban1);
      End
  Else
    If luas = 'segitiga' Then
      Begin
        Writeln('masukkan alas?');
        Readln(a);
        Writeln('masukkan tinggi');
        Readln(t);
        jawaban2 := (a * t)/2;
        Writeln('luas segitiga = ',jawaban2);
      End
  Else
    If luas = 'lingkaran' Then
      Begin
        Writeln('masukkan jari-jari?');
        Readln(r);
        jawaban2 := phi * r * r;
        Writeln('luas lingkaran adalah =',jawaban2);
      End
  Else
    If luas = 'trapesium' Then
      Begin
        Writeln('masukkan sisi atas?') ;
        Readln(x) ;
        Writeln('masukkan sisi bawah?') ;
        Readln(y) ;
        Writeln('masukkan tinggi?') ;
        Readln(t);
        jawaban2 := (x + y) * t / 2 ;
        Writeln ('luas trapesium adalah = ',jawaban2);
      End
  Else Writeln('maaf rumus tidak tersedia') ;
End .
