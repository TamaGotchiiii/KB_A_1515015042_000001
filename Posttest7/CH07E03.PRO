/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer,integer) - procedure (i,o,i)

clauses
  length_of([], Result, Result).
  length_of([_|T],Result,Counter):-
	NewCounter = Counter + 1,
	length_of(T, Result, NewCounter).

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */