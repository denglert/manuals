
# Errorbar plot

Reference:
- https://matplotlib.org/examples/statistics/errorbar_demo_features.html

## Symmetric error bars

~~~~
x = np.arange(0.1, 4, 0.5)
error = 0.1 + 0.2 * x
a.errorbar(x, y, yerr=error, fmt='-o')
~~~~

## Asymmetric error bars

~~~~
f,a = plt.subplots()
lower_error = 0.4 * error
upper_error = error
asymmetric_error = [lower_error, upper_error]
a.errorbar(x, y, xerr=asymmetric_error, fmt='o')
~~~~
