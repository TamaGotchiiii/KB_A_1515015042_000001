domains
/*program ini adalah sebuah contoh untuk membuat data object jamak, pembuatan data object ini 
hampir sama seperti membuat fakta akan tetapi ini bukanlah sebuah fakta*/ 
orang = orang(nama,alamat)
nama = nama(pertama,kedua)
alamat = alamat(jalan, kota_kab, propinsi)
jalan = jalan(nama_jalan, nomor)
kota_kab,propinsi,nama_jalan = string
pertama,kedua = symbol
nomor = integer

goal
/*seperti yang kita lihat digoal p1 object orang mempunyai argumen nama, alamat, argumen nama ini merupakan sebuah object juga
maka kita harus mengisi argumen pertama dan kedua seperti yang dideklarasikan diatas, sama seperti nama, alamat juga merupakan sebuah
object maka kitaharus mengisi argumen dari alamat yaitu jalan, kota_kab dan propinsi, akan tetapi jalan merupakan sebuah object
juga jadi kita harus mengisi argumen yang dimiliki jalan yaitu nama_jalan dan nomor, baru kita isi argumen dari alamat yang lainnya */
P1 = orang(nama(diena,fatihah), alamat(jalan("wijaya", 12),"berbah","DIY")),
P1 = orang(nama(_,fatihah), Alamat),
P2 = orang(nama(nur,fatihah), Alamat),
write("P1=",P1),nl,
write("P2=",P2),nl.
