#-*- mode: makefile-gmake -*-
# Copyright (c) 2016-2022 Peter Morgan <peter.james.morgan@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
PROJECT = any
PROJECT_DESCRIPTION = Convert any type into an atom, binary, boolean, float, integer or list
PROJECT_VERSION = ${shell git describe --tags}
TEST_DEPS = triq

COVER = 1

PLT_APPS = \
	compiler \
	crypto \
	syntax_tools

define HEX_TARBALL_EXTRA_METADATA
#{
	licenses => [<<"Apache-2">>],
	links => #{
		<<"GitHub">> => <<"https://github.com/shortishly/any">>
	}
}
endef


include erlang.mk

app:: rebar.config
