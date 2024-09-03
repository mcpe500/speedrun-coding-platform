%% src/my_web_server_app.erl
-module(my_web_server_app).
-behaviour(application).

-export([start/0, start/2, stop/1]).

start() ->
    my_web_server:start().

start(_Type, _Args) ->
    my_web_server:start().

stop(_State) ->
    my_web_server:stop().
