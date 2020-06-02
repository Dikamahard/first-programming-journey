program pembulatan_uang;
// diberikan sebuah integer, bulatkan integer tersebut ke dalam pecahan terendah (misal 19.212 menjadi 19.200), pecahan terendah 25

Uses crt;

Var
 harga : integer;
 sisa : integer;
 
Begin
 
  writeln('masukkan harga ');
	readln(harga);
	sisa := harga mod 25;
	harga := harga - sisa;
  writeln('pembulatan kedalam pecahan terendah');
	writeln(harga);

end. 
