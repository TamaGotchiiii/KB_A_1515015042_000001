/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer) - procedure (i,o)

clauses
  length_of([], 0)./*fakta akan dipending sampai pada saat rule yang dibawah dieksekusi sampai habis*/
  length_of([_|T],L):-/* rule ini akan mengabaikan head, dan akan menghitung tail yang ada, L akan bertambah sesuai dengan panjang Taillength + 1*/
	length_of(T,TailLength),
	L = TailLength + 1.

goal
  length_of([1,2,3],L).
