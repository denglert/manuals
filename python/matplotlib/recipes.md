# `matplotlib` plot recipes

## Heat map

### With `pcolor`

~~~~
cba = np.linspace(-1.0,  1.0, 100, endpoint=True)
tb  = np.linspace(0.0,  10.0, 100, endpoint=True)

X, Y = np.meshgrid(cba,tb)
K_HDD = k_hdd(X,Y)

f, a = plt.subplots()
c = a.pcolor(X, Y, K_HUU, cmap='RdBu_r', vmin=-2.0, vmax=2.0 )
~~~~


## Contour plot

Example for a simple contour plot:

~~~~
k_hdd = lambda cba, tb: np.sqrt(1.0-cba*cba) - cba * tb
cba   = np.linspace(-1.0, 1.0, 100, endpoint=True)
tb    = np.linspace(0.0, 30.0, 100, endpoint=True)
X, Y  = np.meshgrid(cba,tb)
Z     = k_hdd(X,Y)
c = plt.contourf(X,Y,Z, 10,  cmap='RdBu_r',  extend='both')
~~~~


## Pixel plot

Make a grid pixel plot

~~~~
grid = np.array([
        [1,2,3],
        [4,5,6],
        [7,8,9]
        ])

plt.imshow(grid,  interpolation='nearest', cmap='gnuplot' )
~~~~


Make a grid pixel plot, with specifying extent (didn't really managed to make it work so far)

~~~~
plt.imshow(grid, extent=[-0.65, 0.65, 0, 20.5], interpolation='nearest', cmap='gnuplot' )
~~~~