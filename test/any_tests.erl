%% Copyright (c) 2016 Peter Morgan <peter.james.morgan@gmail.com>
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%% http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.

-module(any_tests).
-include_lib("triq/include/triq.hrl").
-include_lib("eunit/include/eunit.hrl").


prop_list_to_integer() ->
    ?FORALL(X, int(), X =:= any:to_integer(integer_to_list(X))).

prop_binary_to_integer() ->
    ?FORALL(X, int(), X =:= any:to_integer(list_to_binary(integer_to_list(X)))).

prop_integer_to_integer() ->
    ?FORALL(X, int(), X =:= any:to_integer(X)).


prop_list_to_atom() ->
    ?FORALL(X, atom(), X =:= any:to_atom(atom_to_list(X))).

prop_binary_to_atom() ->
    ?FORALL(X, atom(), X =:= any:to_atom(list_to_binary(atom_to_list(X)))).

prop_atom_to_atom() ->
    ?FORALL(X, atom(), X =:= any:to_atom(X)).


prop_list_to_float() ->
    ?FORALL(X, real(), X =:= any:to_float(float_to_list(X))).

prop_binary_to_float() ->
    ?FORALL(X, real(), X =:= any:to_float(list_to_binary(float_to_list(X)))).

prop_float_to_float() ->
    ?FORALL(X, real(), X =:= any:to_float(X)).



any_test_() ->
    ?_assert(triq:module(?MODULE)).
