# Check type of variable


## `type()`

- https://docs.python.org/3/library/functions.html#type

With one argument, return the type of an object.

**Example(s):**

~~~~
>>> a = 1
>>> type(a)
<class 'int'>
~~~~


~~~~
if type(x) is list:
    print("x is a list.")
elif type(x) is tuple:
    print("x is a tuple.")
~~~~


## `isinstance()`

- https://stackoverflow.com/questions/3501382/checking-whether-a-variable-is-an-integer-or-not


Example:

~~~~
>>> class DummyInt(int):
...     pass
... 
>>> x = DummyInt(0)
>>> type(x)
<class '__main__.DummyInt'>
>>> isinstance(x, int)
True
~~~~
