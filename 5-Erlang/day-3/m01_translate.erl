-module(m01_translate).
-export([start/0, translate/1]).

start() ->
  Monitor = spawn(fun translator_monitor/0),
  Monitor ! new.

translator_monitor() ->
  process_flag(trap_exit, true),
  receive
    new ->
      io:format("Start new translator...~n"),
      register(translator, spawn_link(fun translator_service/0)),
      translator_monitor();
    {'EXIT', From, Reason} ->
      io:format("The translator ~p died with reason ~p.~n", [From, Reason]),
      self() ! new,
      translator_monitor()
  end.


translator_service() ->
  receive
    {From, "casa"} ->
      From ! "house",
      translator_service();
    {From, "blanca"} ->
      From ! "white",
      translator_service();
    {From, _} ->
      From ! {error, "Unknown"},
      exit("Incomprehensible text")
  end.

translate(Word) ->
  translator ! {self(), Word},
  receive
    {error, _} -> error;
    Translation -> Translation
  end.
