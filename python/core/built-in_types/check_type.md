# Check type of variable


## `type()`



Example:

~~~~
>>> a = 1
>>> type(a)
<class 'int'>

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
