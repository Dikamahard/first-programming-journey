Program tanggalan;          // menentukan tanggal esok saat di input tanggal sekarang
uses crt;
Type
  tahun = Record
    yy : Integer;
    mm : Integer;
    dd : Integer;
  End;
Var
  t1 : tahun;
  t2 : tahun;
  max : Integer;
	day : integer;
Begin
	writeln('masukkan tanggal lengkapnya');
  Readln(t1.dd, t1.mm, t1.yy);

	if t1.mm = 2 Then            // untuk bulan februari
	Begin
    If (t1.yy Mod 400 = 0) Or ((t1.yy Mod 4 = 0) And (t1.yy Mod 100 <> 0)) Then   // menentukan tahun kabisat
		 Begin
			max := 29                                                                  // jika iya, jumlah hari 29
		 end
		Else
     Begin
       max := 28;                                                               // jika tidak jumlah hari = 28
     End;


	  If t1.dd = max Then
	   Begin
      t2.dd := 1 ;
      t2.mm := t1.mm + 1;
	   end
  	Else
     Begin
      t2.dd := t1.dd + 1;
		  t2.mm := t1.mm;
     End;

		 t2.yy := t1.yy;              // tahun

  end;

	case t1.mm Of                       // semua bulan kecuali bulan februari dan desember karena mereka khusus
		1, 3, 5, 7, 8, 10 : day := 31;
		4, 6, 9, 11 : day := 30;
	end;

 if t1.mm <> 2 Then
  Begin
	 if t1.dd = day Then
	 begin
	  t2.dd := 1  ;
		t2.mm := t1.mm + 1
	 End
	 Else
	 begin
	  t2.dd := t1.dd + 1;
		t2.mm := t1.mm;
	 end;
	 t2.yy := t1.yy;              // tahun
  end;

 if (t1.mm = 12) and (t1.dd = 31) Then            // unutk bulan desember
	Begin
		t2.mm := 1 ;
		t2.dd := 1 ;
		t2.yy := t1.yy + 1;        // tahun
	end;
	


 writeln(t2.dd, '/', t2.mm, '/', t2.yy);


End.
