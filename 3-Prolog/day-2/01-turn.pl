concatenate([], List, List).
concatenate([Head|Tail1], List, [Head|Tail2]) :- concatenate(Tail1, List, Tail2).

turn([], []).
turn([Head|Tail], List) :- turn(Tail, ResultTail), concatenate(ResultTail, [Head], List).
