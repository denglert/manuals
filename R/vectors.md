## Vector


Create a vector:

~~~~
a <- c(1, 2, 3)
~~~~


Give a name to each element:

~~~~
names(a) = c('a', 'b', 'c')
~~~~

### Accessing elements of the vector

i-th element:

~~~~
a[i]
~~~~

Element by name:

~~~~
a['a']
~~~~

Slice of the vector from `i` to `j`:

~~~~
a[i:j]
~~~~



### Filtering

Only select negative values:

~~~~
x[x < 0]
~~~~
