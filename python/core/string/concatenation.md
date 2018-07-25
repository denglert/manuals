# String concatenation


## `+`/`.__add__()` operator

the concatenation of s and t

~~~~
>>> str1 = 'Mona'
>>> str2 = 'Lisa'
>>> str1 + str2
'MonaLisa'
~~~~



## `join()`

- https://docs.python.org/3.6/library/stdtypes.html#str.join

Return a string which is the concatenation of the strings in iterable. A `TypeError` will be raised
if there are any non-string values in iterable, including `bytes` objects. The separator between
elements is the string providing this method.


The method `join()` returns a string in which the string elements of sequence have been joined by
str separator.


### Example(s)

~~~~
>>> s = "-"
>>> seq = ("a", "b", "c")
>>> joined = s.join(seq)
>>> print(joined)
a-b-c
~~~~


~~~~
str.join(iterable)
~~~~

