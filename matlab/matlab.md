# `Matlab` manuals


**All references:**
- https://uk.mathworks.com/help/matlab/ref/for.html
- https://uk.mathworks.com/help/matlab/matlab_prog/loop-control-statements.html



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


### Accessing elements


~~~~
>>> M = [3; 2; 1]
>>> M(2)
ans = 2
~~~~

~~~~
>>> M = [3 4; 1 2]
>>> M(2,1)
ans = 1
~~~~


### Slicing

~~~~
>>> M = [3 2; 1 4]
M =

   3   2
   1   4

>>> M(:,2)
ans =

   2
   4
~~~~

### Create matrices with fixed size


~~~~
>>> z = zeros(3,2)
>>> z
0 0
0 0
0 0
~~~~


### Reshape arrays

~~~~
>>> M = [3 4; 5 6]
>>> reshape(M, 4 1)
ans =

   3
   5
   4
   6
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
