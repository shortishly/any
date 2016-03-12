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

-module(any).
-export([to_atom/1]).
-export([to_boolean/1]).
-export([to_float/1]).
-export([to_integer/1]).


-spec to_boolean(list() | binary() | boolean()) -> boolean().

to_boolean(<<"true">>) ->
    true;
to_boolean("true") ->
    true;
to_boolean(<<"false">>) ->
    false;
to_boolean("false") ->
    false;
to_boolean(false) ->
    false;
to_boolean(true) ->
    true.


-spec to_integer(integer() | list() | binary()) -> integer().

to_integer(X) when is_integer(X) ->
    X;
to_integer(X) when is_list(X) ->
    list_to_integer(X);
to_integer(X) when is_binary(X) ->
    to_integer(binary_to_list(X)).


-spec to_atom(atom() | list() | binary()) -> atom().

to_atom(X) when is_atom(X) ->
    X;
to_atom(X) when is_list(X) ->
    list_to_atom(X);
to_atom(X) when is_binary(X) ->
    to_atom(binary_to_list(X)).


-spec to_float(float() | list() | binary()) -> float().

to_float(X) when is_float(X) ->
    X;
to_float(X) when is_list(X) ->
    list_to_float(X);
to_float(X) when is_binary(X) ->
    to_float(binary_to_list(X)).
