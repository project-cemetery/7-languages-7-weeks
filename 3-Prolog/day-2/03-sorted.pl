:- use_module(library(lists)).

is_sorted([]).
is_sorted([_]).
is_sorted([Head1|[Head2|Tail]]) :- Head1 =< Head2, is_sorted([Head2|Tail]).

sorted(List, Sorted) :- permutation(List, Sorted), is_sorted(Sorted).
