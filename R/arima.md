# Autoregressive integrated moving average (ARIMA)

**References:**
- https://en.wikipedia.org/wiki/Autoregressive_integrated_moving_average
- https://www.rdocumentation.org/packages/forecast/versions/8.4/topics/Arima

~~~~
arima(x, order = c(0L, 0L, 0L),
      seasonal = list(order = c(0L, 0L, 0L), period = NA),
      xreg = NULL, include.mean = TRUE,
      transform.pars = TRUE,
      fixed = NULL, init = NULL,
      method = c("CSS-ML", "ML", "CSS"), n.cond,
      SSinit = c("Gardner1980", "Rossignol2011"),
      optim.method = "BFGS",
      optim.control = list(), kappa = 1e6)
~~~~
