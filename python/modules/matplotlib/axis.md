# Axis

Get the axis handle of an already existing axis:

~~~~
a = plt.gca()
~~~~





## Axis on/off

Don't display any axis:

~~~~
plt.axis('off')
~~~~


Don't display a specific axis:

~~~~
ax.axis('off')
~~~~


Delete an existing axis:

~~~~
fig.delaxes(ax)
~~~~


## Grid

~~~~
a.grid('off')
~~~~

## Axis label

Setting labels:

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$' )
ax.set_ylabel( r'$\sigma$ [pb]' )
~~~~

Align axis label to the right:

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$', horizontalalignment='right', x=1.0)
~~~~

Color labels:

~~~~
ax.xaxis.label.set_color('red')
~~~~

## Setting axis ticks and labels

~~~~
fix, ax = plt.subplots(nrows=1, ncols=1, sharex=True )
ax.set_xticks(      np.linspace(0, 1, 5) )
ax.set_xticklabels( np.linspace(0, 1, 5), rotate='vertical')
ax.set_yticks(      np.linspace(0, 1, 5) )
ax.set_yticklabels( np.linspace(0, 1, 5))
~~~~

## Axis ranges

~~~~
ax.set_xlim(0.0, 1.0)
ax.set_ylim(0.0, 1.0)
~~~~

## Plots with two different scales

~~~~
fig, ax1 = plt.subplots()
ax1.plot(t, s1, 'b-')
ax2 = ax1.twinx()
ax2.plot(t, s2, 'r.')
~~~~


## Spines

**Set color of spines:**

~~~~
a.spines['left'].set_color('C0')
~~~~



## Axis relative coordinates

~~~~
transform = ax.transAxes
~~~~

Example:

- Place text in the middle of the plot:

    ~~~~
    ax.text(0.5, 0.5, 'matplotlib',
         horizontalalignment='center',
         verticalalignment='center',
         transform = ax.transAxes)
    ~~~~
