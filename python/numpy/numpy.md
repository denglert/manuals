# Numpy commands


## Reshaping/resizing arrays


### Array reshaping (`np.reshape()`)

~~~~
a = np.array([1,2,3,4,5,6,7,8,9])
grid = a.reshape(3,3)

grid = np.array([
        [1,2,3],
        [4,5,6],
        [7,8,9]
        ])

grid = grid[::-1]
grid = grid.T
grid = grid.T[::-1]
~~~~

### Array resizing (`np.resize()`)

Note:
- If the size of the array is larger than the original array, the elements will be repeated

~~~~
a = np.array([1,2,3,4,5,6,7,8,9])
truncated = np.resize(a, (3,2))
repeated = np.resize(a, (5,5))
~~~~

Output:

~~~~
truncated =
array([[1, 2],
       [3, 4],
       [5, 6]])
~~~~

~~~~
repeated =
array([[1, 2, 3, 4, 5],
       [6, 7, 8, 9, 1],
       [2, 3, 4, 5, 6],
       [7, 8, 9, 1, 2],
       [3, 4, 5, 6, 7]])
~~~~


## Vectorize a function:

`np.vectorize` takes a scalar function and creates a function which can be applied to numpy arrays.

~~~~
vtrapzeoid = np.vectorize(trapezoid)
~~~~
