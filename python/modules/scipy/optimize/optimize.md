# `scipy.optimize`


**All references:**
- https://stackoverflow.com/questions/16739065/how-to-display-progress-of-scipy-optimize-function


## `curve_fit(f, xdata, ydata, p0=None, sigma=None, absolute_sigma=False, check_finite=True, bounds=(-inf, inf), method=None, jac=None, **kwargs)`

- https://docs.scipy.org/doc/scipy-1.0.0/reference/generated/scipy.optimize.curve_fit.html

Use non-linear least squares to fit a function, f, to data.


### Example(s)

~~~~
def poly2(x, a0, a1, a2):
    return a0 + a1*x + a2*x**2
popt, pcov = curve_fit(poly2, x, y)
~~~~

## `fmin_cg(f, x0, fprime=None, args=(), gtol=1e-05, norm=inf, epsilon=1.4901161193847656e-08, maxiter=None, full_output=0, disp=1, retall=0, callback=None)`


**References:**
- https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.fmin_cg.html


### Example(s):

~~~~
theta_opt, theta_iters = optimize.fmin_cg(f=cost_function, fprime=gradient, x0=theta0, args=(X, y, lam), maxiter=50, retall=True)
costs = [cost_function(theta, X, y, lam) for theta in theta_iters]
~~~~

