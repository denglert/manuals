# Confusion matrix

**References:**
- https://stackoverflow.com/questions/35572000/how-can-i-plot-a-confusion-matrix


~~~~
nx, ny = matrix.shape
f,a = plt.subplots(figsize=(9,9), subplot_kw={'aspect':'equal'})
a.set_ylabel('Truth')
a.set_xlabel('Predicted')
im = a.imshow(matrix, cmap=cmap, vmax=vmax)

for x in range(nx):
    for y in range(ny):
        label = label_format.format(matrix[x][y])
        a.annotate(label, xy=(y, x), 
                    horizontalalignment='center',
                    verticalalignment='center')
cb = f.colorbar(im)
a.set_xticks(range(K));
a.set_yticks(range(K));
~~~~
