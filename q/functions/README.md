# Functions in `q`

**References:**
- https://code.kx.com/q/basics/function-notation/


## Defining a custom function

### Syntax

~~~~
func:{[arg1; arg2; ...; argn] executable1; executable2; ... ; executablem; result_to_return }
~~~~


---------------------------------------------------------------------


### Examples


#### Function adding two numbers together

~~~~
add:{[a; b] a+b}
add[6;7]
13
~~~~


#### Function taking the square of a number

~~~~
q) sqr:{[a] a*a}
q)sqr 4
16
q)sqr[4]
16
~~~~


Using implicit parameter names `x`, `y`, `z`:

~~~~
q) sqr:{x*x}
q) sqr 5
25
~~~~



#### Newton-Raphson

~~~~
q) fiter:{[xn] xn + (2.0-xn*xn)%2.0*xn}
q) fiter 1.0
1.5
q) fiter/[1.0]
1.414214
q) fiter\[1.0]
1 1.5 1.416667 1.414216 1.414214 1.414214
~~~~


#### Fibonacci

~~~~
~~~~

