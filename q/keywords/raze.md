# `raze`

**References:**
- https://code.kx.com/q/ref/raze/

Return the items of `x` joined, collapsing one level of nesting.

-------------------------------------------------------------------------------

## Syntax

~~~~
raze x    raze[x]
~~~~


-----------------------------------------------------------------------------------------------

## Examples

~~~~
raze (1 2; 3 4 5)
1 2 3 4 5
~~~~


~~~~
b: (1 2; (3 4; 5 6); 7; 8)
raze b 
1
2
3 4
5 6
7
8
~~~~


Flatten all levels

~~~~
b: (1 2; (3 4; 5 6); 7; 8)
raze/[b] 
1 2 3 4 5 6 7 8
~~~~
