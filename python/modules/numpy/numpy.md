# Numpy commands

Separate docs on:
- [Data types](datatypes.md)
- [Linear algebra](linearalgebra.md)
- [General operations](./operations.md)
- [Random submodule](./random.md)


Notebooks:
- [Usage of meshgrid](./meshgrid.ipynb)
- [`numpy` array shapes](numpy_array_shape.ipynb)


## Vectorize a function:

`np.vectorize` takes a scalar function and creates a function which can be applied to numpy arrays.

~~~~
vtrapzeoid = np.vectorize(trapezoid)
~~~~
