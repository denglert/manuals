# `numpy.ndarray` manuals


## Arithmetic, matrix multiplication, and comparison operations

- https://docs.scipy.org/doc/numpy-1.14.0/reference/arrays.ndarray.html#arithmetic-matrix-multiplication-and-comparison-operations

Arithmetic and comparison operations on `ndarray`s are defined as element-wise operations, and
generally yield `ndarray` objects as results.


Each of the arithmetic operations (`+`, `-`, `*`, `/`, `//`, `%`, `divmod()`, `**` or `pow()`, `<<`,
`>>`, `&`, `^`, `|`, `~`) and the comparisons (`==`, `<`, `>`, `<=`, `>=`, `!=`) is equivalent to
the corresponding universal function (or `ufunc` for short) in NumPy.
