Program penghitung_durasi;
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
  tot_det1 : Longint;
  tot_det2 : Longint;
  selisih : Integer;
  sisa : Integer;


Begin
 
  Writeln('masukkan jam1');
  Readln(j1.hh);
  Writeln('masukkan menit1');
  Readln(j1.mm);
  Writeln('masukkan detik1');
  Readln(j1.ss);
  Writeln('masukkan jam2');
  Readln(j2.hh);
  Writeln('masukkan menit2');
  Readln(j2.mm);
  Writeln('masukkan detik2');
  Readln(j2.ss);
  Writeln('waktu ke 1 = ',j1.hh,':',j1.mm,':',j1.ss);
  Writeln('waktu ke 2 = ',j2.hh,':',j2.mm,':',j2.ss);
  tot_det1 := j1.hh * 3600 + j1.mm * 60 + j1.ss;
  tot_det2 := j2.hh * 3600 + j2.mm * 60 + j2.ss;
  Writeln('total detik waktu 1 = ',tot_det1);
  Writeln('total detik waktu 2 = ',tot_det2);
  selisih := tot_det2 - tot_det1;
  Writeln('durasi waktu = ',selisih,' detik') ;
  j3.hh := selisih Div 3600;
  sisa := selisih Mod 3600;
  j3.mm := sisa Div 60;
  j3.ss := sisa Mod 60;
  Writeln('durasi waktu = ',j3.hh,':',j3.mm,':',j3.ss) ;
  
End.
