/*Posttest 1*/

predicates
	nondeterm suka(symbol,symbol) 
	nondeterm pinjam(symbol,symbol) 
	nondeterm kaset(symbol,symbol) 
	nondeterm manusia(symbol) 
	
clauses
	manusia(tommy).
	manusia(ita).
	manusia(rian).
	
	kaset(thejunglebook,ada).
	kaset(moana,habis).
	kaset(zootopia,ada).
	
	suka(tommy,moana).
	suka(rian,insidious).
	suka(ita,zootopia).
	
	pinjam(Who,What):-
		manusia(Who),
		kaset(What,ada),
		suka(Who,What).
		
goal
	pinjam(Who,What).
	
	
	
	
	