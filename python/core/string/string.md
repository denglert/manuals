# python string objects

**All references:**
- https://docs.python.org/3.6/library/string.html

Python strings cannot be changed, they are immutable.


## Join

- https://docs.python.org/3.6/library/stdtypes.html#str.join

The method `join()` returns a string in which the string elements of sequence have been joined by
str separator.


~~~~
>>> s = "-"
>>> seq = ("a", "b", "c")
>>> joined = s.join(seq)
>>> print(joined)
a-b-c
~~~~


----


Return a string which is the concatenation of the strings in iterable. A `TypeError` will be raised
if there are any non-string values in iterable, including bytes objects. The separator between
elements is the string providing this method.

~~~~
str.join(iterable)
~~~~

### Join all elements of the sequence

## Get all the unique characters in a string (=remove duplicates)

~~~~
>>> str = 'monty pythons flying circus'
>>> set(str)
{'c', 'm', 'y', 's', 'i', 'l', 't', 'f', 'p', 'h', 'g', ' ', 'n', 'r', 'u', 'o'}
~~~~


## Replace substring with another substring

- https://www.pythoncentral.io/pythons-string-replace-method-replacing-python-strings/

~~~~
str.replace(old_substr, new_substr)
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
