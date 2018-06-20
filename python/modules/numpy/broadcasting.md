# Broadcasting in `numpy`

**All references:**
- https://docs.scipy.org/doc/numpy/user/basics.broadcasting.html
- http://scipy.github.io/old-wiki/pages/EricsBroadcastingDoc
- https://bic-berkeley.github.io/psych-214-fall-2016/subtract_means.html



## Subtracting the mean from columns or rows

~~~~
>>> X = np.array([stats.norm.rvs(loc=5.0, scale=2.0, size=10) for i in range(100)])
>>> X_means = X.mean(axis=1)
~~~

~~~
>>> X.shape
(100, 10)
>>> _X_means.shape
(100,)
~~~~

~~~~
>>> X_demeaned = X - X_means
ValueError: operands could not be broadcast together with shapes (100,10) (100,) 
~~~~

~~~~
X_means_reshaped = X_means.reshape((100,1))
X_demeaned = X - X_means
~~~~
