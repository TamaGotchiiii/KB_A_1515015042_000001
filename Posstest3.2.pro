PREDICATES
nondeterm dapat_membeli(symbol, symbol)
nondeterm orang(symbol)
nondeterm mobil(symbol)
suka(symbol, symbol)
dijual(symbol)

CLAUSES
/*
	dibawah ini adalah sebuah rules yaitu : 
	X dapat membeli Y jika
	X adalah orang
	Y adalah mobil
	X suka dengan Y
	dan Y sedang dijual
*/
dapat_membeli(X,Y):-
orang(X), 
mobil(Y), 
suka(X,Y), 
dijual(Y).

/*
	dibawah ini adalah kumpulan fakta
	nur,yudi,dian,dan heni adalah orang
	atoz dan kijang adalah mobil
	
	dian menyukai atoz
	yudi menyukai pecel
	heri suka buku
	nur suka komputer
	
	kijang sedang dijual
	atoz sedang dijual
	buku sedang dijual
*/
orang(nur).	
orang(yudi).	
orang(dian).	
orang(heni).

mobil(atoz).	
mobil(kijang).

suka(dian, atoz).	
suka(yudi, pecel).
suka(heri, buku).	
suka(nur, komputer).

dijual(kijang).		
dijual(atoz).	
dijual(buku).

GOAL
/*
	dibawah ini adalah kumpulan Goal :
	-goal yang pertama akan mencari Siapa yang dapat_membeli apa, pada goal ini rules yang telah dibuat akan berlaku
	 rulesnya adalah Siapa dapat membeli Apa jika : Siapa adalah orang, Apa adalah Mobil, Siapa menyukai Apa, dan Apa sedang Dijual
	 maka hasil yang akan keluar adalah Siapa=Dian dan Apa=Atoz, dikarenakan Dian adalah orang, Atoz adalah Mobil, Dian Menyukai Atoz dan Atoz Sedang Dijual
*/
%dapat_membeli(Siapa,Apa).

/* 
	entah ini jebakan atau bukan intinya adalah goal kedua ini tidak bisa running jika pada predicate tidak ditambahkan kata nondeterm
	tetapi apabila ditambahkan akan mengeluarkan hasil apa saja yang disukai oleh orang-orang tanpa mempedulikan orangnya
	
	Untuk goal ketiga sama dengan goal kedua karena mempunyai predicate yang sama akan tetapi akan mengeluarkan sebaliknya
*/
%suka(_,Apa).
%suka(Siapa,_).
/*pada Goal keempat dan Kelima ini sama dengan Goal pertama yang menggunakan rule yang telah dibuat di bagian clauses
 akan tetapi pada Goal keempat hanya akan menampilkan nama mobil yang dapat dibeli dengan peraturan rule tanpa mempedulika siapa yang membeli mobil tersebut
 Untuk goal kelima adalah kebalikan dari Goal keempat	
*/
dapat_membeli(_,Apa).
%dapat membeli(Siapa,_).