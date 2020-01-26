domains
s = symbol
i = integer

predicates
student(s)
score(s, i)
passed(s)
clauses
student(vlada).
student(andery).
student(anna).
student(roman).

score(vlada, 85).
score(andrey, 66).
score(anna, 100).
score(roman, 30).

passed(X) :- student(X), score(X, Score), Score > 75.


goal
passed(vlada).