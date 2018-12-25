-module(m01_words_count).
-export([words_count/1]).

words_count (Data) -> length(string:split(Data, " ", all)).
