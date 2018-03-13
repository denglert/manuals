# `pandas` averages


## Uniform weighting

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.rolling.html

~~~~
 pd.rolling_mean(up, window)
~~~~


## Exponential weighted average

~~~~
roll_ewma_up   = pd.stats.moments.ewma(up, window)
~~~~

or 

~~~~
roll_ewma_up   = pd.ewma(up, window)
~~~~
