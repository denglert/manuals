# Matrix inverse calculations in `numpy`

## `linalg.inv(a)` - (multiplicative) inverse of a matrix

~~~~
>>> a = np.array([[1., 2.], [3., 4.]])
>>> ainv = np.linalg.inv(a)
>>> ainv
array([[-2. ,  1. ],
       [ 1.5, -0.5]])
>>> np.allclose(np.dot(a, ainv), np.eye(2))
True
~~~~


## `linalg.pinv(a)` - (Moore-Penrose) inverse of a matrix

Compute the (Moore-Penrose) pseudo-inverse of a matrix.

Calculate the generalized inverse of a matrix using its singular-value decomposition (SVD) and
including all large singular values.

~~~~
np.linalg.pinv(a, rcond=1e-15)
~~~~

**Arguments:**
- `a`: Matrix or stack of matrices to be pseudo-inverted.
- `rcond`: Cutoff for small singular values. Singular values smaller (in modulus) than rcond *
  largest_singular_value (again, in modulus) are set to zero. Broadcasts against the stack of
  matrices.
