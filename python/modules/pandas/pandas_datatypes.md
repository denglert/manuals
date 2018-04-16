# Datatypes in `pandas`

## Converting from `object` to a numerical type

~~~~
df = df.convert_objects(convert_numeric=True)
~~~~


## Manual convert

(haven't tried it yet)

~~~~
df['purchase'].astype(str).astype(int)
~~~~
