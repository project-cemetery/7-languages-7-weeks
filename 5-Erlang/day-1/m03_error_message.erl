-module(m03_error_message).
-export([print/1]).

print(success) -> io:format("success~n", []);
print({error, Message}) -> io:format("error: ~p~n", [Message]).
