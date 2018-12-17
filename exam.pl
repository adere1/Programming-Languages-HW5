rev([],[]).

rev([H|T],Res):- rev(T,Res1), append(Res1,[H],Res).

my_last([X],Res):- Res = X.
my_last([H|T],Res):- my_last(T,Res).


my_last1([X,Y],Res):- Res = X.
my_last1([H|T],Res):- my_last1(T,Res).


nth([H|T],1,Res):- Res = H.
nth([H|T],X,Res):- X1 is X-1,nth(T,X1,Res).

dup([],[]).
dup([H|T],Res):- dup(T,Res1),Res = [H,H|Res1].

inc([],[]).
inc([H],Res):- Res = [H1], H1 is H+1.

inc([H,H1|T],Res):- inc(T,Res1), Res = [X,H1|Res1], X is H+1.


remove1([],X,Res):- Res = [].
remove1([H|T],1,Res):- Res = T.
remove1([H|T],X,Res):- X>1,X1 is X-1,remove1(T,X1,Res1), Res = [H|Res1].

delete1([],X,Res):- Res = [].
delete1([X],X,Res):- Res = [].
delete1([H|T],X,Res):- (X==H,delete1(T,X,Res);delete1(T,X,Res1),Res=[H|Res1]).


split1([],L1,L2):- L1 = [], L2 = [].
split1([X],L1,L2):- L1 = [X], L2 = [].
split1([H,H1|T],L1,L2):- split1(T,L3,L4),L1= [H|L3], L2 = [H1|L4].

sumodd([],Res):- Res = 0.
sumodd([X],Res):- Res = X.
sumodd([H,H1|T],Res):- sumodd(T,Res1), Res is H + Res1.

splitn([],_,L1,L2):- L1 = [], L2 = [].
splitn([X],K,L1,L2):- K>=1, L1 =[X].
splitn([H|T],K,L1,L2):- (K>1,K1 is K-1,splitn(T,K1,L3,L2),L1 = [H|L3]; splitn(T,K,L1,L4),L2=[H|L4]).


pre([H|T],[H1|T1]):- H == H1, pre(T,T1).