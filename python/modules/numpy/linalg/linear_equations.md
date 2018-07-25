# Linear equations in `numpy`


## Solve a linear matrix equation

**References:**
- https://docs.scipy.org/doc/numpy-1.14.0/reference/generated/numpy.linalg.solve.html

Problem:

~~~~
A x = b
~~~~

Given matrix A, and vector b find `x`.

~~~~
>>> A = np.array([[3,1], [1,2]])
>>> b = np.array([9,8])
>>> x = np.linalg.solve(A, b)
>>> x
array([ 2.,  3.])
~~~~

~~~~
>>> np.allclose(np.dot(A, x), b)
True
~~~~
