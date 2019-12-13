exercicio5([Hd|Tail], Resulto) :-
    tabela(Tail, [Hd], Resulto).
    tabela([],Res,Res).
    tabela([Head|Tail], List, Resulto) :-
        ultimo(X, List),
        lcm(Head, X, R),
        append(List, [R], Res),
        tabela(Tail, Res, Resulto).

    ultimo(X,[X]).
    ultimo(X,[_|L]):- ultimo(X, L).

    gcd(X, 0, X) :- !.
    gcd(X, Y, Z) :-
        H is X rem Y,
        gcd(Y, H, Z).

    lcm(X,Y,LCM):-
        gcd(X,Y,GCD),
        LCM is X*Y//gcd.

%feito com base https://stackoverflow.com/questions/51180133/prolog-lcm-of-couples-in-list