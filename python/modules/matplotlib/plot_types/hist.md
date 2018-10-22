# hist()

**References:**

- https://matplotlib.org/api/_as_gen/matplotlib.pyplot.hist.html



~~~~
hist(x, bins=None, range=None, density=None, weights=None, cumulative=False, bottom=None,
histtype='bar', align='mid', orientation='vertical', rwidth=None, log=False, color=None, label=None,
stacked=False, normed=None, hold=None, data=None, **kwargs)
~~~~


**Parameters:**
- `x`: (n,) array or sequence of (n,) arrays
      Input values, this takes either a single array or a sequence of arrays which are not required
      to be of the same length
- `bins`:
	Integer or sequence or ‘auto’, optional

    If an integer is given, bins + 1 bin edges are calculated and returned, consistent with `numpy.histogram()`.

    If bins is a sequence, gives bin edges, including left edge of first bin and right edge of last bin. In this case, bins is returned unmodified.

    All but the last (righthand-most) bin is half-open. In other words, if bins is:

    [1, 2, 3, 4]

    then the first bin is [1, 2) (including 1, but excluding 2) and the second [2, 3). The last bin, however, is [3, 4], which includes 4.

    Unequally spaced bins are supported if bins is a sequence.

    If Numpy 1.11 is installed, may also be 'auto'.

    Default is taken from the rcParam hist.bins
- `range`:
	tuple or `None`, optional

    The lower and upper range of the bins. Lower and upper outliers are ignored. If not provided, range is (x.min(), x.max()). Range has no effect if bins is a sequence.

    If bins is a sequence or range is specified, autoscaling is based on the specified bin range instead of the range of x.

    Default is None

- `density`:
	If `True`, the first element of the return tuple will be the counts
	normalized to form a probability density, i.e., the area (or integral) under
	the histogram will sum to 1. This is achieved by dividing the count by the
	number of observations times the bin width and not dividing by the total number
	of observations. If stacked is also True, the sum of the histograms is
	normalized to 1.

	Default is `None` for both normed and density. If either is set, then that
value will be used. If neither are set, then the args will be treated as `False`.

    If both density and normed are set an error is raised.

- `orientation`

- ...



## Example(s):


### Normalized histogram of y points, with horizontal orientation

~~~~
a.hist(y, bins=50, density=True, orientation="horizontal")
~~~~


### Create histogram out of weighted samples

- https://stackoverflow.com/questions/41252078/weighted-bins-in-a-distribution-hist-plot

~~~~
a.hist(x,y, weight=weights)
~~~~
