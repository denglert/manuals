# Unsorted collection of commands in `R`


Covered functions

- `mean()`
- `var()`
- `summary()`
- `names()`
- `cbind()`
- `rbind()`
- `ls()`


## Help

?command

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


--------------------------------------------------------------------------------------


## Matrix


Associated functions:

- `matrix()`
- `rownames()`
- `colnames()`
- `rowSums()`

Create a matrix with elements from 1 to 9 with 3 rows:

~~~~
matrix(1:9, byrow = TRUE, nrow = 3)
~~~~

### Naming rows and columns

- `rownames()`
- `colnames()`

Example:


~~~~
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles
~~~~


### Sum

#### `rowSums()`

Example:

~~~~
>>> A <- matrix(c(1,2,3,4), byrow = TRUE, nrow=2)
>>> rowSums(A)
3 7
~~~~


#### `colSums()`

~~~~
>>> A <- matrix(c(1,2,3,4), byrow = TRUE, nrow=2)
>>> colSums(A)
4 6
~~~~


### Concatenate

#### `cbind()` concatenate a column

Example:

~~~~
>>> A = c(1,2)
>>> B = c(7,8)
>>> cbind(A,B)
A B
1 7
2 8
~~~~

#### `rbind()` concatenate a row


~~~~
>>> A = c(1,2)
>>> B = c(7,8)
>>> rbind(A,B)
A B
1 2
7 8
~~~~


### Selection

~~~~
>>> M <- matrix(c(1,2,3,4,5,6,7,8,9), byrow=TRUE, nrow=3)
>>> M
1 2 3
4 5 6
7 8 9
~~~~


~~~~
>>> M[1,2]
2
~~~~

~~~~
>>> M[1:2,2:3]
2 3
5 6
~~~~

~~~~
>>> M[,1]
1 2 3
~~~~

~~~~
>>> M[1,]
1 4 7
~~~~

--------------------------------------------------------------------------------------


## Factor


~~~~
>>> state <- c("Active", "Inactive, "Hanging")
>>> state_factor <- factor(state)
>>> state_factor
Active Inactive Hanging
~~~~
