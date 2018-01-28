# Smoothing


## Contours

### Resampling data (`scipy.ndimage.zoom()`)

~~~~
import numpy as np
import scipy.ndimage
import matplotlib.pyplot as plt

data = np.loadtxt('data.txt')

# Resample your data grid by a factor of 3 using cubic spline interpolation.
data = scipy.ndimage.zoom(data, 3)

plt.contour(data)
~~~~

### Gaussian filtering (`scipy.ndimage.filters.gaussian_filter()`):

~~~~
import numpy as np
from scipy.ndimage.filters import gaussian_filter
import matplotlib.pyplot as plt

sigma = 0.7 # this depends on how noisy your data is, play with it!
data = np.loadtxt('data.txt')
data = gaussian_filter(data, sigma)
contour(data)
~~~~
