# File I/O


## Delimited text file


### Read a delimited text file into a data frame

~~~~
df <- read.table(path)
~~~~


### Write a data frame into delimited text file

~~~~
write.table(df, path)
~~~~

-----------------------------------------------------------------

## CSV

### Read csv into a data frame

~~~~
df <- read.csv(path)
~~~~

### Write data frame into a csv file

~~~~
write.csv(df, path)
~~~~


-----------------------------------------------------------------

## R data file

### Read in an R data file into the workspace


~~~~
load(path)
~~~~

### Save an object to an R datafile

~~~~
save(df, file)
~~~~
