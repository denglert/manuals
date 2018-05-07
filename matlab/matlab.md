# `Matlab` manuals



## Basic

### Rows and columns

~~~~
>>> M = [3, 2, 1]
>>> size(M)
1 3
~~~~

~~~~
>>> M = [3; 2; 1]
>>> size(M)
3 1
~~~~


~~~~
>>> M = [3; 2; 1]
>>> size(M, 1)
3
~~~~

~~~~
>>> M = [3; 2; 1]
>>> size(M, 2)
1
~~~~


### Create matrices with fixed size


~~~~
>>> z = zeros(3,2)
>>> z
0 0
0 0
0 0
~~~~



## Linear algebra


Transpose of a matrix:

~~~~
M.'
~~~~


Add a new column to the matrix:

~~~~
M = zeroes(3,2)
a = [2;2;2]
M_new = [a M]
~~~~

Argmax:

~~~~
>>> M = [2, 5; 4,1]
>>> [argval, argmax] = max(M, [], 2);
argval =
5
4
argmax =
2
1
~~~~
