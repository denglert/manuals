# Unsorted commands `q`

## `count`


**References:**

Count the number of items in a list.


## `xasc`


**References:**


Sort a table by columns

~~~~
`colname1`colname` xasc table
~~~~


## `#` (hash operator)


**References:**

Show the first 5 items

~~~~
5#t
~~~~


Generate random integers:

1 random integer from the [0,9] interval:

~~~~
1?10
~~~~


10 random integers from the [0,4] interval:

~~~~
10?5
~~~~

## `get`

**References:**

~~~~
get `:/data/t
~~~~

## `set`

**References:**

## `value`

**References:**

~~~~
value `:/data/t
~~~~

## `read0`

**References:**

## `hcount`

**References:**

## `hdel`

**References:**

## `hsym`


**References:**

## `first`

**References:**

## `last`

**References:**

## `wavg`

**References:**
- https://code.kx.com/wiki/Reference/wavg

The `wavg` verb returns the average of its right argument weighted by its left argument. The result
is floating point. 

**Example:**

~~~~
4 3 2 1 wavg 10 20 30 40
~~~~

## `xbar`

**References:**
- https://code.kx.com/wiki/Reference/xbar

The `xbar` verb rounds its right argument down to the nearest multiple of the integer left argument.
The right argument can be any numeric or temporal type. 

**Example(s):**

~~~~
5 xbar 0 1 2 3 4 5 10 11 21
~~~~

## `0N!`



## `hopen`

**References:**
- https://code.kx.com/wiki/Reference/hopen

Opens a file or process handle. 

Syntax:

~~~~
q)h:hopen process
q)h:hopen (process;timeout)
q)h:hopen filename
~~~~

The result is a positive integer handle. 

**Example(s):**

~~~~
h: hopen `:localhost:4243
~~~~


## `\l`

Load q script

~~~~
\l script.q
~~~~
