# python string objects

**All references:**
- https://docs.python.org/3.6/library/string.html


## Join

The method `join()` returns a string in which the string elements of sequence have been joined by
str separator.

~~~~
s = "-"
seq = ("a", "b", "c")
joined = s.join(seq)
print(joined)
~~~~

Returns: 
`a-b-c`

## Sorting

~~~~
>>> str = 'ecbhfgad'
>>> sorted(str)
['a', 'b', 'c', 'd', 'e', 'f', 'g', 'g', 'h']
~~~~

## Contents

**Check if a string contains a substring:**

~~~~
if "blah" is in stringvar:
    print("blah is in {}".format(stirngvar))
~~~~



