# `numpy.random`


## `np.random.choice()` - random choice

Generates a random sample from a given 1-D array.

Usage:

~~~~
np.random.choice(a, size, replace, p)
~~~~

**Parameters:**
-----------
- `a` : 1-D array-like or int
	If an ndarray, a random sample is generated from its elements.
	If an int, the random sample is generated as if a were np.arange(a)
- `size` : int or tuple of ints, optional
    Output shape.  If the given shape is, e.g., ``(m, n, k)``, then
    ``m * n * k`` samples are drawn.  Default is None, in which case a
    single value is returned.
- `replace` : boolean, optional
    Whether the sample is with or without replacement
- `p` : 1-D array-like, optional
    The probabilities associated with each entry in a.
    If not given the sample assumes a uniform distribution over all
    entries in a.

Returns

- samples : single item or ndarray
      The generated random samples

**Example:**

~~~~
>>> np.random.choice(5, 3)
array([0, 3, 4])
~~~~
