# `sympy` manuals

**All references:**
- http://docs.sympy.org/latest/modules/solvers/solvers.html
- https://stackoverflow.com/questions/48547420/how-to-get-real-part-of-number


Solving an equation:

~~~~
from sympy.solvers import solve
from sympy import Symbol
x = Symbol('x')
solve(x**2 - 1, x)
[-1, 1]
~~~~


Get the real part of a complex number:


~~~~
real = sp.re(z)
~~~~
