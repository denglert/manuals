# Figure options

Create a figure with a specific size, dpi and an equal aspect ratio:

~~~~
plt.figure(figsize=(20,10), dpi=80, subplot_kw={'aspect':'equal'})
~~~~


Get the figure handle of an already existing figure:

~~~~
f = plt.gcf()
~~~~

## Margins

Adjust margins:

~~~~
f.subplots_adjust(left=0.1, right=0.9, top=0.9, bottom=0.1)
~~~~

Tight layout:

~~~~
f.tight_layout()
~~~~

Adjusting subplot size and spacing between subplots:

~~~~
f, a = plt.subplots(nrows=3, ncols=2)
f.tight_layout()
~~~~

or 

~~~~
f.subplots_adjust(wspace=0.2, hspace=0.2)
~~~~


## Subplots

**Make a 3x2 grid of subfplots:**

~~~~
fig, axes = plt.subplots(ncols=3, nrows=2)
fig.set_size_inches(10,10)
~~~~


**Specify the height ratio of the subplots:**

~~~~
f,(a1,a2) = plt.subplots(nrows=2, gridspec_kw={'height_ratios':[2, 1]})
~~~~

### Grid

~~~~
ax1 = plt.subplot2grid((6,1), (0,0), rowspan=5, colspan=1)
ax2 = plt.subplot2grid((6,1), (5,0), rowspan=1, colspan=1, sharex=ax1)
~~~~

