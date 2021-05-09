# Each iterator

**References:**
- https://code.kx.com/q/ref/maps/#each


Apply a value item-wise to a dictionary, list, or conforming lists and/or dictionaries.

## Syntax

~~~~
(v1')x    v1'[x]       v1 each x
x v2'y    v2'[x;y]
          v3'[x;y;z]
~~~~


-----------------------------------------------------------------------------------------------

## Each both

Each applied to a binary value is sometimes called each both and can be applied infix.

~~~~
1 2 3 in' (1 0 1; til 100; 5 6 7) 
110b
~~~~

-----------------------------------------------------------------------------------------------

## Examples

~~~~
(count') `a`b`c ! (1 2 3; 4 5; 6 7 8 9)        / unary 
a| 3
b| 2
c| 4
~~~~
