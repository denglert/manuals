# General features applicable to every plot type

## Plotting order of plot artists (`zorder`)

**References:**
- https://matplotlib.org/examples/pylab_examples/zorder_demo.html

The default drawing order for axes is patches, lines, text.  This
> order is determined by the zorder attribute.  The following defaults
> are set
> 
> Artist                      Z-order
> Patch / PatchCollection      1
> Line2D / LineCollection      2
> Text                         3
>
> You can change the order for individual artists by setting the zorder.  Any
> individual plot() call can set a value for the zorder of that particular item.

~~~~
plt.plot(x, y, 'r', zorder=1, lw=3)
plt.scatter(x, y, s=120, zorder=2)
~~~~


