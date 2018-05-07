# meshgrid

`np.meshgrid()`

Return coordinate matrices from coordinate vectors.

Make N-D coordinate arrays for vectorized evaluations of N-D scalar/vector fields over N-D grids,
given one-dimensional coordinate arrays x1, x2,..., xn.

Changed in version 1.9: 1-D and 0-D cases are allowed.
Parameters:

- `x1`, `x2`,..., `xn`: array_like

    1-D arrays representing the coordinates of a grid.

- `indexing`: {‘xy’, ‘ij’}, optional

    Cartesian (‘xy’, default) or matrix (‘ij’) indexing of output. See Notes for more details.
    
    New in version 1.7.0.

- `sparse`: bool, optional

    If True a sparse grid is returned in order to conserve memory. Default is False.

New in version 1.7.0.

copy : bool, optional

If False, a view into the original arrays are returned in order to conserve memory. Default is True.
Please note that sparse=False, copy=False will likely return non-contiguous arrays. Furthermore,
more than one element of a broadcast array may refer to a single memory location. If you need to
write to the arrays, make copies first.



~~~~
x = np.linspace(1.0, 6.0, 5)
y = np.linspace(12.0, 15.0, 3)

X,Y = np.meshgrid(x,y, indexing='xy')
~~~~
