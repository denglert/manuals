# Heat map

## With `pcolor`

~~~~
cba = np.linspace(-1.0,  1.0, 100, endpoint=True)
tb  = np.linspace(0.0,  10.0, 100, endpoint=True)

X, Y = np.meshgrid(cba,tb)
K_HDD = k_hdd(X,Y)

f, a = plt.subplots()
c = a.pcolor(X, Y, K_HUU, cmap='RdBu_r', vmin=-2.0, vmax=2.0 )
~~~~

