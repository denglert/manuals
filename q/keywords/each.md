# `each`, `peach`

**References:**
- https://code.kx.com/q/ref/each/

Iterate a unary.

`each` and `peach` perform the same computation and return the same result.
`peach` will divide the work between available secondary tasks.

`each` is a wrapper for the [Each iterator][each_iteration].
`peach` is a wrapper for the [Each Parallel iterator][each_parallel_iteration].

It is good q style to use `each` and `peach` for unary values. 

-----------------------------------------------------------------------------------------------

## Syntax

~~~~
 v1 each x   each[v1;x]       v1 peach x   peach[v1;x]  
(vv)each x   each[vv;x]      (vv)peach x   peach[vv;x]
~~~~

where
- `v1` is a unary applicable value
- `vv` is a variadic applicable value

applies `v1` or `vv` as a unary to each item of `x` and returns a result of the same length.

That is, the projections `each[v1;]`, `each[vv;]`, `each[v1;]`, and `peach[vv;]` are uniform functions.

-----------------------------------------------------------------------------------------------

## Examples

~~~~
count each ("the";"quick";" brown";"fox")
~~~~

~~~~
(+\) peach (2 3 4; (5 6;7 8); 9 10 11 12)
2 5 9
(5 6;12 14)
9 19 30 42
~~~~

[each_iteration]: ../iteration/each.md
[each_parallel_iteration]: ../iteration/each_parallel.md
