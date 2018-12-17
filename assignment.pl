	
	

max([H|T],Res):- newmax(H,T,Res).

newmax(H,[],Res):- Res = H.
newmax(X,[H|T],Res):- X>=H, newmax(X,T,Res).
newmax(X,[H|T],Res):- X<H, newmax(H,T,Res).


deleteNList(0,L,Res):- Res = L.
deleteNList(N,[],Res):- Res = [].
deleteNList(N,L,Res):- delete2(L,N,N,Res).

delete2([],K,N,Res):- Res = [].
delete2([H|T],K,N,[H|Res]):- K > 1,K1 is K-1,delete2(T,K1,N,Res).
delete2([H|T],K,N,Res):- K==1, delete2(T,N,N,Res).
 

replace_first_k(K,[],Res):- Res = [].
replace_first_k(0,L,Res):- Res = L.
replace_first_k(K,[H|T],[N|Res]):- H==1, K1 is K-1, N = 8,  replace_first_k(K1,T,Res).
replace_first_k(K,[H|T],[H|Res]):- H\==1, replace_first_k(K,T,Res).


position(K,[],Res):- Res = [].
position(K,L,Res):- position1(1,K,L,Res).

position1(N,K,[],Res):- Res = [].
position1(N,K,[H|T],Res):- H==K, N1 is N+1, position1(N1,K,T,Res1), Res = [N|Res1].
position1(N,K,[H|T],Res):- H\==K, N1 is N+1, position1(N1,K,T,Res).
