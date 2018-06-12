# Functions in python


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


## `filter(function, iterable)`

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


## `map(function, iterable, ...)`

- https://docs.python.org/3/library/functions.html#map

Return an iterator that applies `function` to every item of `iterable`, yielding the results. If
additional `iterable` arguments are passed, function must take that many arguments and is applied to
the items from all iterables in parallel. With multiple iterables, the iterator stops when the
shortest iterable is exhausted. For cases where the function inputs are already arranged into
argument tuples, see `itertools.starmap()`.


## Current local symbol table `locals()`

Display the local variables seen from the locale of a function:

~~~~
print(locals())
~~~~
