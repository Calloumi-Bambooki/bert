
-module(game).
-compile(export_all).

moo() ->
  register(game, self()),
  receive
    {P, Msg} ->
      io:fwrite(Msg),
      P!10;
    X ->
      io:fwrite(X)
  end.
