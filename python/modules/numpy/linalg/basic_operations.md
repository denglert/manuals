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

- https://docs.scipy.org/doc/numpy-1.15.0/reference/generated/numpy.dot.html
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



### Matrix product

- https://docs.scipy.org/doc/numpy-1.15.1/reference/generated/numpy.matmul.html


Matrix product of two arrays.


~~~~
>>> a = [[1, 0], [0, 1]]
>>> b = [[4, 1], [2, 2]]
>>> np.matmul(a, b)
array([[4, 1],
       [2, 2]])
~~~~

### Transpose

~~~~
M = np.array([[2, 5, 6], [5, 1, 7], [3, 3, 1]])
numpy.transpose(M)
~~~~

~~~~
M.transpose()
~~~~

