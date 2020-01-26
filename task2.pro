domains
  s = symbol
  i = integer
  
predicates
likes(s, s)
can_buy(s, s)
cost(s, i)
have(s, i)
car(s)
 
clauses
car(lada_kalina).
car(bmw_x7).
car(dodge_challenger).
car(mazda_cx_5).
likes(roman, lada_kalina).
likes(roman, bmw_x7).
likes(roman, dodge_challenger).
likes(roman, mazda_cx_5).
have(roman, 50000).
cost(lada_kalina, 45000).
cost(bmw_x7, 55555).
cost(dodge_challenger, 66666).
cost(mazda_cx_5, 77777).
  
can_buy(A, B):-
  	likes(A, B), 
    car(B), 
    have(A, Money), 
    cost(B, Price), 
    Money>=Price.