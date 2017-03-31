DOMAINS
/*ini adalah contoh program untuk medeklarasikan domain campuran
seperti yang dilihat pada domain benda beberapa object nah pada setiap object tersebut
mereka memiliki object yang argumennya berbeda tipe itulah yang dinamakan domain campuran*/   
benda = buku(judul, pengarang) ;       
	kuda(nama) ; 
	kapal ;       
	bukubank(saldo)   
judul, pengarang, nama = symbol   
saldo	= real  
PREDICATES   
nondeterm milik(nama,benda)
 
CLAUSES   
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).   
milik(erwin, kuda(buraq)).   
milik(erwin, kapal).   
milik(erwin, bukubank(1000)).  
 
GOAL
/*jadi pada saat goal dijalankan karena variabel Benda itu akan diisi oleh domain benda maka object yang ada di
domain benda akan ikut tertampil setelah dibuat fakta untuk*/   
milik(erwin, Benda).