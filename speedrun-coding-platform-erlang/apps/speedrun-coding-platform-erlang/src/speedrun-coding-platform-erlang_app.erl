%%%-------------------------------------------------------------------
%% @doc speedrun-coding-platform-erlang public API
%% @end
%%%-------------------------------------------------------------------
-module(speedrun_coding_platform_erlang_app).
-behaviour(application).
-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    speedrun_coding_platform_erlang_sup:start_link().

stop(_State) ->
    ok.
%% internal functions