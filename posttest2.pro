predicates
            nondeterm anak(symbol,symbol)
            istri(symbol,symbol)
            pria(symbol)
            nondeterm wanita(symbol)
            usia(symbol,integer)
            nondeterm cucu(symbol,symbol)
            nondeterm adik(symbol)
            nondeterm kakek(symbol,symbol)
            nondeterm ibu(symbol,symbol)
clauses
            
            adik(X) :-
 		usia(X,10).
 		
 	    kakek(X,Y) :-
 		anak(Z,X),
 		anak(Y,Z).
 	
 	    kakek(X,Y) :-
 		anak(Y,W),
 		istri(W,Z),
 		anak(Z,X).
 		
 	    ibu(X,Y):-
 		anak(Y,Z),
 		wanita(X),
 		pria(Z),
 		istri(X,Z).
 	
 	ibu(X,Y):-
 		anak(Y,X),
 		wanita(X).    
 		
            cucu(X,Y) :-
                        anak(X,Z),
                        anak(Z,Y).
            cucu(X,Y):-
                        anak(X,W),
                        istri(W,Z),
                        anak(Z,Y).

                        anak(jhon,james).
                        anak(james,peter).
                        anak(andi,peter).
                        anak(sue,ann).
                        istri(mary,peter).
                        istri(ann,james).
                        pria(jhon).
                        pria(james).
                        pria(peter).
                        pria(andi).
                        wanita(mary).
                        wanita(sue).
                        wanita(ann).
                        usia(john,10).
                        usia(sue,13).
goal
            %cucu(X,Y).
            %adik(X).
            %kakek(X,Y).
            ibu(X,Y).