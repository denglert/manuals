# `pandas` options


**References:**
- https://pandas.pydata.org/pandas-docs/stable/options.html


## Get options

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.get_option.html#pandas.get_option

~~~~
pd.get_option(pat)
~~~~

or 

~~~~
pd.options.display.pat
~~~~

Example:

~~~~
pd.get_option("display.max_rows")
~~~~

or 

~~~~
pd.options.display.max_rows
~~~~

## Set option

**References:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.set_option.html


~~~~
pd.set_option(pat, value)
~~~~

**Examples:**

~~~~
pd.set_option('display.height', 1000)
pd.set_option('display.max_rows', 500)
pd.set_option('display.max_columns', 500)
pd.set_option('display.width', 1000)
~~~~
