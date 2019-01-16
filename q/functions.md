# Functions in `q`


## Function definition

**Syntax:**

~~~~
func:{[arg1; arg2; ...; argn] executable1; executable2; ... ; executablem; result_to_return }
~~~~

**Example(s):**

Function adding two numbers together:

~~~~
add:{[a; b] a+b}
add[6;7]
13
~~~~

Function taking the square of a number:

~~~~
sqr:{[a] a*a}
~~~~
