# Axis ticks

## Set ticks

~~~~
xticks = np.linspace(0, 1, 5)
yticks = np.linspace(0, 1, 5)

ax.set_xticks(xticks)
ax.set_yticks(yticks)
~~~~

## Setting axis ticks and labels

~~~~
xticklabels = np.linspace(0, 1, 5)'
yticklabels = np.linspace(0, 1, 5)                   

ax.set_xticklabels(xticklabels, rotate='vertical')
ax.set_yticklabels(yticklabels)
~~~~

## Turn off ticks and their labels

~~~~
ax.tick_params(which='major',
               bottom=False, top=True, left=True, right=False,
               labelbottom=False, labeltop=True, labelleft=True, labelright=False)
~~~~
