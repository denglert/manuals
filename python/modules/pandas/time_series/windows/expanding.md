# Expanding window


## `pd.DataFrmae.expanding`

### Syntax

~~~~
pd.DataFrame.expanding(min_periods=1,
                      center=False,
                      axis=0)
~~~~


**Parameters:**
- `min_periods` : `int`, default `1`
	Minimum number of observations in window required to have a value
	(otherwise result is `NA`). 

- center `bool`, default `False`
	Set the labels at the center of the window.

- `axis` : `int` or `str`, default `0`

**Returns:**
- a `Window` sub-classed for the particular operation


### Example(s)


~~~~
df = pd.DataFrame({'B': [0, 1, 2, np.nan, 4]})
     B
0  0.0
1  1.0
2  2.0
3  NaN
4  4.0
~~~~

~~~~
df.expanding(2).sum()
     B
0  NaN
1  1.0
2  3.0
3  3.0
4  7.0
~~~~
