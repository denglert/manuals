# `@` Apply At, Index At, Trap At

**References:**
- https://code.kx.com/q/ref/apply/


## Apply at `@[u; ux]`

Rank: 3

-------------------------------------------------------------------------------------------

### Syntax

~~~~
u @ ux
~~~~

or

~~~~
@[u;ux]
~~~~

Apply At:
Apply unary `u` to argument `ux`

Index At:
Get items `ux` from `u`

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

## Trap at `@[f; fx; e]`


Try `f @ fx`; catch with `e`


This is equivalent to `.[f; enlist fx; e]`.

-------------------------------------------------------------------------------------------

### Syntax

~~~~
@[f; fx; e]
~~~~

-------------------------------------------------------------------------------------------

### Example(s)

~~~~
> .[+ ;"ab"; `ouch]
`ouch
~~~~

~~~~
.[+; "ab"; {"Wrong ",x}]
"Wrong type"
~~~~

~~~~
.[+;2 3; {"Wrong ",x}]
5
~~~~