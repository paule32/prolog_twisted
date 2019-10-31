[user].
hello :- format('Ein Test von 2019 (c) Jens Kallup~n').

hello.


human(jens).
human(alfred).

eats(cats, X) :- human(X), !, fail.
eats(cats, fish).
eats(cats, jens).

eat(X, Y) :-
    once(eats(X, Y))
    ->  writef('%t eats %t\n', [X,Y])
    ;   writef('%t does not eat %t\n', [X,Y]).

/*
eats(cat, fish).
eats(cat, jens) :- \+ human(jens).
eats(cat, X) :- \+ human(X).
*/


likes(sam,Food) :-
    indian(Food),
    mild(Food).

indian(curry).

mild(kurma).
