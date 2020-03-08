# Dictionaries in `q`

**References:**
- https://code.kx.com/q/ref/dict/
- https://code.kx.com/q/basics/datatypes/#dictionary-and-table


Short int data type indicator of dictionaries: `99h`



## Creating a dictionary


### `!` Dict

Make a dictionary from two lists

**Syntax:**

~~~~
x!y, ![x;y]
~~~~

Where `x` and `y` are same-length lists, returns a dictionary in which `x` are the keys and `y` are the values.

Dictionary keys should be distinct (i.e. `{x~distinct x}key dict)` but no error is signalled if that
is not so. 

Items of `x` and `y` can be of any datatype, or dictionaries, or tables. 

~~~~
dictionary:`a`b`c!1 2 3
~~~~

Because tables are collections of like dictionaries, `x!` applied to each member of a list returns a
table of that list. For example:


~~~~
q)(`a`b`c!)each(0 0 0;1 2 3;2 4 6)
a b c
-----
0 0 0
1 2 3
2 4 6
~~~~
