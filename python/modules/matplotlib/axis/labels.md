## Axis label

## Setting labels

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$' )
ax.set_ylabel( r'$\sigma$ [pb]' )
~~~~

## Alignment of axis labels

~~~~
ax.set_xlabel( r'$\cos(\beta - \alpha)$', horizontalalignment='right', x=1.0)
~~~~

## Color

~~~~
ax.xaxis.label.set_color('red')
~~~~


## Get axis labels

~~~~
xlabel = ax.xaxis.get_label().get_text()
ylabel = ax.yaxis.get_label().get_text()
~~~~
