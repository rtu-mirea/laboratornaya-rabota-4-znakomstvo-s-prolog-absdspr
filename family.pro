/*****************************************************************************

		Copyright (c) My Company

 Project:  123
 FileName: LAB41.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

domains
s = symbol

predicates
male(s)
female(s)
parent(s, s)
mother(s, s)
father(s, s)
brother(s, s)
sister(s, s)
child(s, s)
grandmother(s, s)
grandfather(s, s)
uncle(s, s)

clauses
male(egor).
male(roman).
male(vladislav).
male(dmitriy).
female(anna).
female(helen).
parent(egor, anna).
parent(egor, roman).
parent(egor, alex).
parene(helen, anna).
parene(helen, roman).
parene(helen, alex).
parent(vladislav, dmitriy).
parent(anna, dmitriy).

child(A, B):-
  	parent(B, A).
  	
mother(A, B):-
  	parent(A, B), 
  	female(A).
  
father(A, B):-
  	parent(A, B), 
  	male(A).
  
brother(A, B):-
  	parent(Z, A), 
  	parent(Z, B), 
  	male(A).
  	
sister(A, B):-
  	parent(Z, A), 
  	parent(Z, B), 
  	female(A).
  	
grandmother(A, B):-
  	child(Y, A), 
  	child(B, Y), 
  	female(A).
  
grandfather(A, B):-
  	child(Y, A), 
  	child(B, Y),
  	male(A).
  	
uncle(A, B):-
  	child(B, Y), 
  	brother(A, Y).



