# Functions in python


**References:**
- https://docs.python.org/3/library/functions.html

## List of built-in functions in python

- `abs()`
- `all()`
- `any()`
- `ascii()`
- `bin()`
- `bool()`
- `bytearray()`
- `bytes()`
- `callable()`
- `chr()`
- `classmethod()`
- `compile()`
- `complex()`
- `delattr()`
- `dict()`
- `dir()`
- `divmod()`
- `enumerate()`
- `eval()`
- `exec()`
- `filter()`
- `float()`
- `format()`
- `frozenset()`
- `getattr()`
- `globals()`
- `hasattr()`
- `hash()`
- `help()`
- `hex()`
- `id()`
- `input()`
- `int()`
- `isinstance()`
- `issubclass()`
- `iter()`
- `len()`
- `locals()`
- `map()`
- `max()`
- `memoryview()`
- `min()`
- `next()`
- `object()`
- `oct()`
- `open()`
- `ord()`
- `pow()`
- `print()`
- `property()`
- `range()`
- `repr()`
- `reversed()`
- `round()`
- `set()`
- `setattr()`
- `slice()`
- `sorted()`
- `staticmethod()`
- `str()`
- `sum()`
- `super()`
- `tuple()`
- `type()`
- `list()`
- `vars()`
- `zip()`
- `__import__()`


### `abs(x)`

Return the absolute value of a number. The argument may be an integer or a floating point number. If
the argument is a complex number, its magnitude is returned.


### `filter(function, iterable)`

- https://docs.python.org/3/library/functions.html#filter

Construct an iterator from those elements of iterable for which `function` returns `true`.
`iterable` may be either a sequence, a container which supports iteration, or an iterator. If
`function` is `None`, the identity function is assumed, that is, all elements of `iterable` that are
false are removed.

Note that `filter(function, iterable)` is equivalent to the generator expression `(item for item in
iterable if function(item))` if function is not `None` and `(item for item in iterable if item)` if
function is `None`.

See `itertools.filterfalse()` for the complementary function that returns elements of iterable for
which function returns `false`.

### `locals`

### `map(function, iterable, ...)`

- https://docs.python.org/3/library/functions.html#map

Return an iterator that applies `function` to every item of `iterable`, yielding the results. If
additional `iterable` arguments are passed, function must take that many arguments and is applied to
the items from all iterables in parallel. With multiple iterables, the iterator stops when the
shortest iterable is exhausted. For cases where the function inputs are already arranged into
argument tuples, see `itertools.starmap()`.


### `print(*objects, sep=' ', end='\n', file=sys.stdout, flush=False)`

- https://docs.python.org/3.6/library/functions.html#print

Print objects to the text stream `file`, separated by `sep` and followed by `end`.
`sep`, `end`, `file` and `flush`, if present, must be given as keyword arguments.

All non-keyword arguments are converted to strings like `str()` does and written
to the stream, separated by `sep` and followed by `end`. Both `sep` and `end` must be
strings; they can also be `None`, which means to use the default values. If no
objects are given, `print()` will just write `end`.

The `file` argument must be an object with a `write(string)` method; if it is not
present or `None`, `sys.stdout` will be used. Since printed arguments are converted
to text strings, `print()` cannot be used with binary mode file objects. For
these, use `file.write(...)` instead.

Whether output is buffered is usually determined by `file`, but if the `flush`
keyword argument is true, the stream is forcibly flushed.

### `range(start, stop[, step])`

- https://docs.python.org/3.6/library/stdtypes.html#range

Rather than being a function, `range` is actually an immutable sequence type.

### `max(iterable, *[, key, default])`/`max(arg1, arg2, *args[, key])`

- https://docs.python.org/3.6/library/functions.html#max

Return the largest item in an iterable or the largest of two or more arguments.

If one positional argument is provided, it should be an iterable. The largest item in the iterable
is returned. If two or more positional arguments are provided, the largest of the positional
arguments is returned.

There are two optional keyword-only arguments. The key argument specifies a one-argument ordering
function like that used for list.sort(). The default argument specifies an object to return if the
provided iterable is empty. If the iterable is empty and default is not provided, a ValueError is
raised.

If multiple items are maximal, the function returns the first one encountered. This is consistent
with other sort-stability preserving tools such as sorted(iterable, key=keyfunc, reverse=True)[0]
and heapq.nlargest(1, iterable, key=keyfunc). 


## `locals()`

Update and return a dictionary representing the current local symbol table.
Free variables are returned by `locals()` when it is called in function blocks,
but not in class blocks.


The contents of this dictionary should not be modified; changes may not affect
the values of local and free variables used by the interpreter.
