# `scipy.ndimage` multi-dimensional image processing

**All references:**
- https://docs.scipy.org/doc/scipy/reference/ndimage.html


## `gaussian_filter()`

- https://docs.scipy.org/doc/scipy/reference/generated/scipy.ndimage.gaussian_filter.html

Multidimensional Gaussian filter.

Usage:

~~~~
scipy.ndimage.gaussian_filter(input, sigma, order=0, output=None, mode='reflect', cval=0.0, truncate=4.0)
~~~~

Example:

~~~~
>>> from scipy.ndimage import gaussian_filter
>>> a = np.arange(50, step=2).reshape((5,5))
>>> a
array([[ 0,  2,  4,  6,  8],
       [10, 12, 14, 16, 18],
       [20, 22, 24, 26, 28],
       [30, 32, 34, 36, 38],
       [40, 42, 44, 46, 48]])
>>> gaussian_filter(a, sigma=1)
array([[ 4,  6,  8,  9, 11],
       [10, 12, 14, 15, 17],
       [20, 22, 24, 25, 27],
       [29, 31, 33, 34, 36],
       [35, 37, 39, 40, 42]])
~~~~
