# python string objects

**All references:**
- https://docs.python.org/3.6/library/string.html

Python strings cannot be changed, they are immutable.


## Join

The method `join()` returns a string in which the string elements of sequence have been joined by
str separator.

~~~~
>>> s = "-"
>>> seq = ("a", "b", "c")
>>> joined = s.join(seq)
>>> print(joined)
a-b-c
~~~~



## Sorting

### Alphabetically

#### In order

~~~~
>>> str = 'ecbhfgad'
>>> sorted(str)
['a', 'b', 'c', 'd', 'e', 'f', 'g', 'g', 'h']
~~~~


#### In reverse order 


##### With advanced slicing

~~~~
>>> str = 'ecbhfgad'
>>> sorted(str)[::-1]
['h', 'g', 'g', 'f', 'e', 'd', 'c', 'b', 'a']
~~~~

### Other

#### Reverse the original order

#### With `reversed()`:

~~~~
>>> str = 'ecbhfgad'
>>> list(reversed(str))
['d', 'a', 'g', 'f', 'h', 'b', 'g', 'c', 'e']
~~~~


#### With advanced slicing

~~~~
>>> str = 'ecbhfgad'
>>> str[::-1]
'dagfhbgce'
~~~~



## String contents

**Check if a string contains a substring:**

~~~~
if "blah" is in stringvar:
    print("blah is in {}".format(stirngvar))
~~~~
