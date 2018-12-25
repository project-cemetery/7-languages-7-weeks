-module(m01_find_value).
-export([find/2]).

head([Head|_]) -> Head.
value({ _, Value }) -> Value.

find(Data, Word) -> value(
  head(
    lists:filter(fun({ Key, _ }) -> Key == Word end, Data)
  )
).
