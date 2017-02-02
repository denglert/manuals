# Numpy commands


Array reshaping:

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

