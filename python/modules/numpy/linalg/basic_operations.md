# Basic linear algebra operations

## Matrix operarations

### Dot product of two arrays

~~~~
a = np.array([1,2])
b = np.array([3,4])
dotproduct = a.dot(b)
~~~~

or with `np.dot`:

~~~~
a = [1,2]
b = [3,4]
dotproduct = np.dot(a,b)
~~~~

### Element-wise product

- https://stackoverflow.com/questions/18293746/what-is-the-multiplication-operator-actually-doing-with-numpy-arrays


Element-wise product:

~~~~
>>> a = np.array([[1,2]])
>>> b = np.array([-1, 2])
>>> a*b
array([[-1,  4]])
~~~~



Other element-wise operations:

- `np.multiply()`
- `np.divide()`


### Transpose

~~~~
M = np.array([[2, 5, 6], [5, 1, 7], [3, 3, 1]])
numpy.transpose(M)
~~~~

~~~~
M.transpose()
~~~~

