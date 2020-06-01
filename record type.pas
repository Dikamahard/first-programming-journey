Program test_record;
Uses crt;
Type
  jam = Record
    hh : Integer;
    mm : Integer;
    ss : Integer;
  End ;
  tahun = Record
    yy : Integer;
    mm : Integer;
    dd : Integer;
  End ;
  data_terbang = Record
    kode_terbang : String;
    bandara_asal : String;
    bandara_tujuan : String;
    tgl_berangkat : tahun;
    jam_berangkat : jam;
    jam_datang : jam;
  End ;
Var
  pesawat : String ;
  garuda : data_terbang;
  citylink : data_terbang;
Begin
  garuda.kode_terbang := 'G-405' ;
  garuda.bandara_asal := 'Soetta' ;
  garuda.bandara_tujuan := 'Halim' ;
  garuda.tgl_berangkat.yy := 2020 ;
  garuda.tgl_berangkat.mm := 5 ;
  garuda.tgl_berangkat.dd := 12 ;
  garuda.jam_berangkat.ss := 47 ;
  garuda.jam_berangkat.hh := 12 ;
  garuda.jam_berangkat.mm := 23 ;
  garuda.jam_datang.ss := 23 ;
  garuda.jam_datang.hh := 05 ;
  garuda.jam_datang.mm := 20 ;
  citylink.kode_terbang := 'C-911' ;
  citylink.bandara_asal := 'Halim' ;
  citylink.bandara_tujuan := 'Soetta' ;
  citylink.tgl_berangkat.yy := 2020 ;
  citylink.tgl_berangkat.mm := 5 ;
  citylink.tgl_berangkat.dd := 13 ;
  citylink.jam_berangkat.ss := 24 ;
  citylink.jam_berangkat.hh := 08 ;
  citylink.jam_berangkat.mm := 45 ;
  citylink.jam_datang.ss := 12 ;
  citylink.jam_datang.hh := 01 ;
  citylink.jam_datang.mm := 28 ;
  Writeln('pesawat apa yang anda gunakan? (garuda, citylink)') ;
  Readln(pesawat) ;
  If pesawat = 'garuda' Then
    Begin
      Writeln('kode pesawat anda : ',garuda.kode_terbang);
      Writeln('asal bandara : ',garuda.bandara_asal);
      Writeln('bandara tujuan : ',garuda.bandara_tujuan);
      Writeln('tanggal keberangkatan : ',garuda.tgl_berangkat.dd,'/', garuda.tgl_berangkat.mm,'/' ,
              garuda.tgl_berangkat.yy);
      Writeln('jam keberangkaatan : ',garuda.jam_berangkat.hh, ':', garuda.jam_berangkat.mm, ':',
              garuda.jam_berangkat.ss);
      Writeln('jam kedatangan : ',garuda.jam_datang.hh, ':', garuda.jam_datang.mm, ':',
              garuda.jam_datang.ss);
    End
  Else
    If pesawat = 'citylink' Then
      Begin
        Writeln('kode pesawat anda : ',citylink.kode_terbang);
        Writeln('asal bandara : ',citylink.bandara_asal);
        Writeln('bandara tujuan : ',citylink.bandara_tujuan);
        Writeln('tanggal keberangkatan : ',citylink.tgl_berangkat.dd,'/', citylink.tgl_berangkat.
                mm,'/' ,
                citylink.tgl_berangkat.yy);
        Writeln('jam keberangkaatan : ',citylink.jam_berangkat.hh, ':', citylink.jam_berangkat.mm
                , ':',
                citylink.jam_berangkat.ss);
        Writeln('jam kedatangan : ',citylink.jam_datang.hh, ':', citylink.jam_datang.mm, ':',
                citylink.jam_datang.ss);
      End
  Else Writeln('pesawat anda tidak tersedia');
End.
