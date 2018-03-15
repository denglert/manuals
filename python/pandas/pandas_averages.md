# `pandas` averages


## Rolling window

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.rolling.html

~~~~
DataFrame.rolling(window, min_periods=None, freq=None, center=False, win_type=None, on=None, axis=0, closed=None)[source]
~~~~


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

