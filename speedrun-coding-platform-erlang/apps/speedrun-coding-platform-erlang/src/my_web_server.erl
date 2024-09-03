%% src/my_web_server.erl
-module(my_web_server).
-behaviour(application).

-export([start/0, start/2, stop/1]).
-export([init/1]).

-define(HTTP_PORT, 8080).

start() ->
    application:start(my_web_server).

start(_Type, _Args) ->
    application:start(my_web_server).

stop(_State) ->
    ok.

init([]) ->
    %% Start Cowboy HTTP server
    Dispatch = cowboy_router:compile([
        {'_', [{"/", my_web_server_handler, []}]}
    ]),
    {ok, _} = cowboy:start_clear(my_http_listener, [{port, ?HTTP_PORT}], #{env => #{dispatch => Dispatch}}),
    {ok, []}.
