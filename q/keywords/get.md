# `get`

**References:**
- https://code.kx.com/q/ref/get/#get

Read or memory-map a variable or kdb+ data file.

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

## Syntax

~~~~
get x     get[x]
~~~~

where `x` is:
- the name of a global variable as a symbol atom
- a file or folder named as a symbol atom or vector
returns its value.

Signals a type error if the file is not a kdb+ data file.

Used to map columns of databases in and out of memory when querying splayed databases, and can be used to read q log files, etc.

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------


## Examples

Get the value of a variable:

~~~~
a:42
get `a
42
~~~~

Read in a table from disk:

~~~~
t: get`:NewTrade  
~~~~

Read in a splayed table from disk:

~~~~
s:get`:SNewTrade/          
~~~~
