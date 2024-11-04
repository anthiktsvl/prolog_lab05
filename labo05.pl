%3.

occurs(_, [], 0).

occurs(Element, [Element | Tail], Count):-
    occurs(Element, Tail, TailCount),
    Count is TailCount + 1.

occurs(Element, [_| Tail], Count) :-  
    occurs(Element, Tail, Count).


%4.

count_odd([], 0).

/*is_odd(N) :-
N mod 2=!1.*/

count_odd([Head|Tail], Count):-
  1 is Head mod 2,
  count_odd(Tail, TailCount),
  Count is TailCount + 1.

count_odd([Head|Tail], Count):-
  0 is Head mod 2,
  count_odd(Tail, Count).
  
%5.
count_vowels([], 0).

count_vowels([Head|Tail], Count):-
  member(Head,[a,e,o,i]),
  count_vowels(Tail, TailCount),
  Count is TailCount + 1.

count_vowels([Head|Tail], Count):-
  not( member(Head,[a,e,o,i])),
  count_vowels(Tail, Count).


