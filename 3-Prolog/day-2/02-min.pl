min(One, Two, Min) :- One < Two, Min is One; Two < One, Min is Two.

min_in_list([Head1|[Head2]], Min) :- min(Head1, Head2, Min).
min_in_list([Head|Tail], Min) :- min_in_list(Tail, Result), min(Result, Head, Min).