# `scipy.optimize`


**All references:**
- https://stackoverflow.com/questions/16739065/how-to-display-progress-of-scipy-optimize-function

## `fmin_cg`


**References:**
- https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.fmin_cg.html


Example:

~~~~
theta_opt, theta_iters = optimize.fmin_cg(f=cost_function, fprime=gradient, x0=theta0, args=(X, y, lam), maxiter=50, retall=True)
costs = [cost_function(theta, X, y, lam) for theta in theta_iters]
~~~~

