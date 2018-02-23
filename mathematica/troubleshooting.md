# Troubleshooting Mathematica


## > Recursion depth of x exceeded during evaluation

**Problems descrition:**

Definining
~~~~
Phi = (Phi_1, Phi_2)
~~~~
Mathematica cannot differentiate between the subscripts, and interprets this assignment as recursion
relation.
Take-away message: subscript notation in Mathematica sucks.

Refs:
- https://mathematica.stackexchange.com/questions/77624/recursion-problem
- https://mathematica.stackexchange.com/questions/119210/problem-storing-x-j-terms-in-variable-x/119216
