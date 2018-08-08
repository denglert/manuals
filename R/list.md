# List in `R`



## Create a `list` object

Example:

~~~~
l <- list(c(1,2,3), mtcars[1:3,], matrix(1:9, ncol=3))
~~~~


## Accessing elements of a list

### `l[i]` - return a new list with only the i-th element

~~~~
l[i]
~~~~

Example:

~~~~
>>> l <- list(c(1,2), c(3,4))
>>> l[i]
1. 1 2
>>> class(l[i])
'list'
~~~~

### `l[[i]]` return the i-th element

~~~~
l[[i]]
~~~~

Example:

~~~~
>>> l <- list(c(1,2), c(3,4))
>>> l[[i]]
1 2
>>> class(l[[i]])
numeric
~~~~

### Accessing named columns and rows

~~~~
>>> l$CRs[2]
'B'
~~~~


### Naming the elements:

Giving names at definition:

~~~~
l < - list(name1=val1, name2=val2, ...)
~~~~

**Example(s):**

~~~~
names(l) <-  c("c", "cars", "mat")
~~~~

~~~~
l <- list(year=2016, GDP=56, inflation=2.7, CRs=c("A+", "B"))
~~~~


### Appending a list

~~~~
new_list <- c(old_list, to_append)
~~~~

**Example(s):**

~~~~
l2 <- c(l, outlook="positive")
~~~~

