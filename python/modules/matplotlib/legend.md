# Legend

**Associated notebook(s):**
- [customizing_legends.ipynb](./notebooks/customizing_legends.ipynb)
- [figure_top_caption_box.ipynb](./notebooks/figure_top_caption_box.ipynb)

**All references:**
- https://stackoverflow.com/questions/29639973/custom-legend-in-pandas-bar-plot-matplotlib
- https://matplotlib.org/users/legend_guide.html
- https://stackoverflow.com/questions/47307315/circle-patch-as-matplotlib-legend-marker?noredirect=1&lq=1

## Legend options

**Relevant reference:**
- https://matplotlib.org/api/_as_gen/matplotlib.pyplot.legend.html

**Options**
- `handles`
- `labels`
- `loc`
- `bbox_to_anchor`
- `ncol`
- `fontsize`
- `fontsize`
- `facecolor`
- `frameon`
- `labelspacing`
- `columnspacing`

### Location of the legend

Example:
if you wish to place the legend outside the plot, call with this options:

~~~~
plt.legend(bbox_to_anchor=(1, 1), loc='upper left', ncol=1)
~~~~

**Other location strings:**

| Location string | Location code |
| ------------ | --- |
| best         |  0  |
| upper right  |  1  |
| upper left   |  2  |
| lower left   |  3  |
| lower right  |  4  |
| right        |  5  |
| center left  |  6  | 
| center right |  7  |
| lower center |  8  |
| upper center |  9  | 
| center       | 10  |


`loc` also accepts a tuple position e.g:
~~~~
plt.legend(loc=(0.6, 0.8))
~~~~

## Retrieve the legend from the axis

~~~~
legend = a1.get_legend()
~~~~

then set its position:

~~~~
legend.set_bbox_to_anchor((1.0, 0.5))
~~~~

## Custom legend markers

**Associated notebook(s):**
- [customizing_legends.ipynb](./notebooks/customizing_legends.ipynb)

A legend doesn't have to be associated to an existing curve - you can also create a legend yourself:

~~~~
import matplotlib.lines as mlines
red_patch = mpatches.Patch(color='red', label='The red data')
blue_line = mlines.Line2D([], [], color='blue', marker='*',
                          markersize=15, label='Blue stars')
legend_handles = [red_patch, blue_line]
f,a = plt.subplots()
leg = a.legend(handles=legend_handles)
~~~~

## Multiple legends on the same plot

Reference:
https://matplotlib.org/users/legend_guide.html#multiple-legends-on-the-same-axes

~~~~
legend1 = pyplot.legend([lines[i] for i in [0,1,2]], ["algo1", "algo2", "algo3"], loc=1)
legend2 = pyplot.legend([lines[i] for i in [0,3,6]], parameters, loc=4)
a.add_artist(legend1)
a.add_artist(legend2)
~~~~

## Remove legends

~~~~
ax.legend_.remove()
~~~~

or 

~~~~
legend = ax.legend(...)
legend.remove()
~~~~

## Top figure caption box

**Associated notebook:**
[figure_top_caption_box.ipynb](./notebooks/figure_top_caption_box.ipynb)

Reference:
- https://stackoverflow.com/questions/41469207/how-to-draw-rectangle-outside-of-the-plot-frame-in-matplotlib

~~~~
f.subplots_adjust(top=0.8)
caption_box = mpatches.Rectangle((0.0, 1.0), 1.0, 0.2, clip_on=False, transform=a.transAxes,
edgecolor='k', facecolor='white', linewidth=1.0)
a.text(0.4, 1.09, 'This text is inside the top figure caption box', horizontalalignment='center',
transform=a.transAxes)
a.add_artist(caption_box)
~~~~

## Bug: sometimes the legend doesn't appear within the `jupyter` environment.

Try the following so that it is displayed:

~~~~
f,a = plt.subplots()
a.plot(x,y, label='y')
handles, labels = a.get_legend_handles_labels()
a.legend(handles, labels)
~~~~

