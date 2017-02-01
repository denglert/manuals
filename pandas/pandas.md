# List of useful pandas commands


## Conversion

~~~~
import pandas as pd
~~~~

Read in whitespace seperated datafile

~~~~
pd.read_csv( 'file.dat', delimiter_whitespace=True)
~~~~


Write to a whitspace seperated datafile

~~~~
pd.read_csv( 'file.dat', sep=' ', index=False, float_format='%.3e', index=False)
~~~~

## Concatenation

~~~~
dfiles = glob.glob(  './data/*.dat' )
df_list = []

for f in dfiles:
    df_temp = pd.read_csv(f, delim_whitespace=True)
    df_list.append( df_temp )

df = pd.concat(df_list)
~~~~

## Plotting

~~~~
df.plot(x, y, kind='scatter')
~~~~
