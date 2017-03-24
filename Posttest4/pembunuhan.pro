domains
 nama,jender,pekerjaan,benda,alasan,zat=symbol
 umur=integer
 
predicates
 nondeterm orang(nama, umur, jender , pekerjaan)
 nondeterm selingkuh(nama,nama)
 terbunuh_dengan(nama,benda)
 terbunuh(nama)
 nondeterm pembunuh(nama)
 motif(alasan)
 ternodai(nama,zat)
 milik(nama,benda)
 nondeterm cara_kerja_mirip(benda,benda)
 nondeterm kemungkinan_milik(nama,benda)
 nondeterm dicurigai(nama)
 
clauses
/*ini fakta predikat orang*/
 orang(budi,55,m,tukang_kayu).
 orang(aldi,25,m,pemain_sepak_bola).
 orang(aldi,25,m,tukang_jagal).
 orang(joni,25,m,pencopet).
 /*ini adalah fakta orang tukang selingkuh, seperti yang kita lihat kalau joni adalah buaya darat yang selingkuh dengan
 dua orang, dan ina seperti cabe-cabean yang juga selingkuh dengan 2 orang*/
 selingkuh(ina,joni).
 selingkuh(ina,budi).
 selingkuh(siti,joni).
 
 /*ini adalah fakta bahwa siti telah terbunuh dengan senjata pentungan, makanya jangan suka selingkuh!!*/
 terbunuh_dengan(siti,pentungan).
 terbunuh(siti).
 
 /*ini adalah fakta dari motif-motif yang mungkin digunakan oleh pelaku*/
 motif(uang).
 motif(cemburu).
 motif(dendam).
 
 /*ini adalah kumpulan fakta bahwa mereka semua adalah orang yang ternodai*/
 ternodai(budi,darah).
 ternodai(siti,darah).
 ternodai(aldi,lumpur).
 ternodai(joni,coklat).
 ternodai(ina,coklat).
 
 
 /*ini adalah bagian fakta kepemilikan*/
 milik(budi,kaki_palsu).
 milik(joni,pistol).
 
 /*ini adalah fakta untuk mencari benda yang memiliki kerja yang sama dengan sebuah senjata*/
 cara_kerja_mirip(kaki_palsu, pentungan).
 cara_kerja_mirip(balok,pentungan).
 cara_kerja_mirip(gunting,pisau).
 cara_kerja_mirip(sepatu_bola,pentungan).
 
 /*ini adalah bagian rule dimana dirule ini akan dicari kemungkinan kepemilikan suatu barang
disini ada 3 rule yang sama
- yang pertama ini adalah kepemilikan sepatu bola dengan syarat X adalah seorang pemain bola
- yang kedua ini adalah kepemilikan gunting dengan syarat X adalah seorang pekerja salon
- yang ketiga adalah ketika kita hopeless mencari dan membiarkan program mencari dari fakta milik yang ada diatas tadi, yaitu
X memiliki Benda jika Benda adalah milik X*/
 kemungkinan_milik(X,sepatu_bola):-
 	orang(X,_,_,pemain_sepak_bola).
 kemungkinan_milik(X,gunting):-
 	orang(X,_,_,pekerja_salon).
 kemungkinan_milik(X,Benda):-
 	milik(X,Benda).
 	
 /*ini adalah rule dicurigai dimana X dicurigai jika siti yang terbunuh oleh Senjata, dan X memiliki Benda yang
 cara kerjanya mirip dengan Senjata yang membunuh siti*/	
 dicurigai(X):-
  	terbunuh_dengan(siti,Senjata),
  	cara_kerja_mirip(Benda,Senjata),
  	kemungkinan_milik(X,Benda).
  
  /* ini adalah rule dicurigai yang kedua, dirule ini dijelaskan X dicurigai jika memiliki motif cemburu,
  dan X adalah seorang laki-laki, dan siti selingkuh dengannya*/	
  dicurigai(X):-
  	motif(cemburu),
  	orang(X,_,m,_),
  	selingkuh(siti,X).
  	
  /*disini X dicurigai jika, motifnya cemburu, dan X adalah wanita, X selingkuh dengan laki-laki yang selingkuh dengan Siti
  seganteng apa sih cowonya direbutin segala -,-*/	
  dicurigai(X):-
  	motif(cemburu),
  	orang(X,_,f,_),
  	selingkuh(X,LakiLaki),
  	selingkuh(siti,LakiLaki).
  	
  /*dirule ini X dicurigai jika, X memiliki motif uang dan X adalah seorang pencopet*/	
  dicurigai(X):-
  	motif(uang),
  	orang(X,_,_,pencopet).
  
  /*ini adalah rule yang akan memecahkan kasus ini,
  Pembunuh adalah orang, Terbunuh sudah pasti terbunuh,yang Terbunuh bukan Pembunuh ga bunuh diri,
  dan Pembunuh adalah orang yang dicurigai berdasarkan rule diatas, Pembunuh ternodai dengan sebuah Zat
  dan yang Ternodai dengan Zat yang sama*/
  pembunuh(Pembunuh):-
  	orang(Pembunuh,_,_,_),
  	terbunuh(Terbunuh),
  	Terbunuh<>Pembunuh,
  	dicurigai(Pembunuh),
  	ternodai(Pembunuh,Zat),
  	ternodai(Terbunuh,Zat).
  	
 Goal
  pembunuh(X).
  /*ketika dirunning hasilnya adalah budi, karena budi adalah Orang, yang terbunuh adalah siti, dan siti tidak bunuh diri
  budi dicurigai pembunuh karena siti terbunuh dengan Senjata, dan cara kerja senjata tersebut hampir sama dengan benda
  yang dimiliki budi ya itu kaki palsu, budi dan siti juga ternodai dengan Zat yang sama.
  Intinya jangan pernah selingkuh, hargai orang yang menyayangi kita EAAAAKK!!*/