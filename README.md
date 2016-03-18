# Any

Convert a list or binary representing an integer, float or atom into
an integer, float or atom and vise versa.

## Examples

```shell
1> any:to_integer(<<"123">>).
123
2> any:to_integer("123").
123
3> any:to_integer(123).
123
```

```shell
6> any:to_float(<<"12.34">>).
12.34
7> any:to_float("12.34").
12.34
8> any:to_float(12.34).
12.34
```

```shell
9> any:to_atom(<<"bob">>).
bob
10> any:to_atom("bob").
bob
11> any:to_atom(bob).
bob
```

```shell
12> any:to_boolean(<<"false">>).
false
13> any:to_boolean(<<"true">>).
true
14> any:to_boolean("false").
false
15> any:to_boolean("true").
true
16> any:to_boolean(false).
false
17> any:to_boolean(true).
true
```
