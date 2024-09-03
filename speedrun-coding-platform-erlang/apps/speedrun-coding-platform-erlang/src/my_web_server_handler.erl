%% src/my_web_server_handler.erl
-module(my_web_server_handler).
-behaviour(cowboy_handler).

-export([init/2, handle/2, terminate/3]).

init(Req, State) ->
    %% Send a 200 OK response
    {ok, Req, State}.

handle(Req, State) ->
    %% Construct a simple response
    Reply = #{<<"content-type">> => <<"text/plain">>},
    Body = <<"Hello, World!">>,
    {ok, Req2} = cowboy_req:reply(200, Reply, Body, Req),
    {ok, Req2, State}.

terminate(_Reason, _Req, _State) ->
    ok.
