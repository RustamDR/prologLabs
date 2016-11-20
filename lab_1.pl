% Длина списка
len([], 0).
len([_|T], Result):-len(T, N), Result is N + 1.

% Поиск элемента
in(X, [Y|_]):-X==Y.
in(X, [_|T]):-in(X, T).

% Вставка в конец
push([],X,X).
push([X|T],Y, [X|Z]):-push(T,Y,Z).

% Удаление из списка
rem(X,[X|R],R).
rem(X,[F |R],[F|S]) :- rem(X,R,S).

% Перестановки
perm([X|Y],Z) :- perm(Y,W), rem(X,Z,W).
perm([],[]).

% Подсписок
sub(X,L):-push(_,S,L), push(X,_,S).

% Поиск последнего
last([X], X).
last([_|Y], Z):-last(Y, Z).

% Поиск последнего через стандартный предикат
laststd(L, X):-append(_,[X],L).

% Поиск последнего для порядкового представления
lastp(L, X):-append(_,[e(X,_)], L).

% Сумма элементов
sum([],0).
sum([X|T], Result):-sum(T,S), Result is S + X.

% Сумма элементов для порядкового представления
sum_to_num([], 0).
sum_to_num([e(X,_)|T], Result):-sum_to_num(T,S), Result is S+X.

% Совместное использование last и delete, удалить все что равно последнему
deletelast(L, R):-last(L, X), delete(L, X, R).
