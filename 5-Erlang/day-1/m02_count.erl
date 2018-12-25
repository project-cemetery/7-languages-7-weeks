-module(m02_count).
-export([count/1]).

count(0) -> io:format("0~n", []);
count(N) -> io:format("~p~n", [N]), count(N - 1).
