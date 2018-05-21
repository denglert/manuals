# Modifying data in `pd.DataFrame`s and `pd.Series`


## Rename columns

### Custom

~~~~
df.rename(columns={'k_huu':'k_hdd', 'k_hdd':'k_huu'}, inplace=True)
~~~~

### Rename columns while iterating over them


~~~~
for col_name in df.columns.values:
    df.rename(columns={col_name: new_col_name}, inplace=True)
~~~~


Example:

Prepend the column names with a prefix:

~~~~
for col_name in df.columns.values:
    df.rename(columns={col_name: prefix+col_name}, inplace=True)
~~~~


### Rename with `StringMethod`

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.Series.str.replace.html

Replace occurrences of pattern/regex in the Series/Index with
some other string. Equivalent to :meth:`str.replace` or
:func:`re.sub`.


~~~~
df.columns = df.columns.str.replace(pat, repl, n=-1, case=None, flags=0, regex=Ttrue)
~~~~


**Parameters:**

- `pat` : string or compiled regex
    String can be a character sequence or regular expression.

    .. versionadded:: 0.20.0
        `pat` also accepts a compiled regex.

- `repl` : string or callable
    Replacement string or a callable. The callable is passed the regex
    match object and must return a replacement string to be used.
    See :func:`re.sub`.

    .. versionadded:: 0.20.0
        `repl` also accepts a callable.

- `n` : int, default -1 (all)
    Number of replacements to make from start
- `case` : boolean, default None
    - If True, case sensitive (the default if `pat` is a string)
    - Set to False for case insensitive
    - Cannot be set if `pat` is a compiled regex
- `flags` : int, default 0 (no flags)
    - re module flags, e.g. re.IGNORECASE
    - Cannot be set if `pat` is a compiled regex


## Replace data

**References:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.replace.html
- https://stackoverflow.com/questions/27060098/replacing-few-values-in-a-pandas-dataframe-column-with-another-value
- https://stackoverflow.com/questions/31888871/pandas-replacing-column-values


Example:

~~~~
df['tanb'].replace(1, 1.01, inplace=True)
~~~~



## Set values

- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.set_value.html

Set the value of a specific cell:

~~~~
df.set_values(index, col, value)
~~~~


## Drop data

### Drop columns

**References:**
- https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.drop.html

~~~~
df.drop(columns=['col1'], inplace=True)
~~~~


### Drop rows


#### Drop row while iterating

- https://stackoverflow.com/questions/28876243/how-to-delete-the-current-row-in-pandas-dataframe-during-df-iterrows

~~~~
for index, row in df.iterrows():
    if row['a'] > 0:
        df.drop(index, inplace=True)
~~~~

### Drop all duplicates

~~~~
df = df.drop_duplicates(subset=['mh2', 'sina'], keep=False)
~~~~


## Sort

~~~~
df_sorted = df.sort_values(by=['mHc'], ascending=[False])
~~~~
