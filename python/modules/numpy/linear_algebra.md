# `numpy` linear algebra

## Dot product of two arrays

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

## Transpose

~~~~
M = np.array([[2, 5, 6], [5, 1, 7], [3, 3, 1]])
numpy.transpose(M)
~~~~

~~~~
M.transpose()
~~~~

## Mapping

Example: Boolean map of a matrix

`False`: not equal to 2
`True`: equal to 2

~~~~
labels = np.array([2,3,3,4,5,6,7,7,1,2,2,2,1])
boolean_map = (labels == 2)
~~~~

The boolean map can be converted to integers:

~~~~
y = boolean_map*1
~~~~