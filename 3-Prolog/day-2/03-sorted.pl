takeout(Head, [Head|Tail], Tail).  
takeout(Head1, [Head2|Tail2], [Head2|Result]) :- takeout(Head1, Tail2, Result).

perm([Head|Tail], Result) :- perm(Tail, Permutaed), takeout(Head, Result, Permutaed).  
perm([],[]).

is_sorted([]).
is_sorted([_]).
is_sorted([Head1|[Head2|Tail]]) :- Head1 =< Head2, is_sorted([Head2|Tail]).

sorted(List, Sorted) :- perm(List, Sorted), is_sorted(Sorted).
