# Unsorted collection of commands in `R`


Covered functions:

- Basic:
	- `help()`
	- `typeof()`
	- `class()`
	- `str()`
	- `library()`
	- `require()`
	- `install.packages()`

	- `invisible()`

    - `identical()`

Operations:
	- `unique()`
	- `summary()`
	- `names()`
	- `cbind()`
	- `rbind()`
	- `ls()`
	- `factor()`
    - `sort(x, decreasing=FALSE)`
    - `append()`
    - `rev()`


Sequence:
    - `rep()`
    - `seq()`

Math:
	- `var()`
	- `mean()`
    - `sum()`
    - `round()`
    - `abs()`


Vectorization:
	- `lapply`
	- `sapply`

Conversion:
	- `unlist()`

Strings:
	- `nchar()`
	- `paste()`
    - `cat()`
	- `print()`
	- `strsplit()`
	- `tolower()`
	- `sub()`
	- `substr()`
	- `as.character()`
	- `is.character()`
	- `sprintf()`
    - `gsub()`


inspection

Distributions:
    - `runif()`



## Types

- numeric
- character
- logical






## Help

?command


--------------------------------------------------------------------------------------


## Matrix


Associated functions:

- `matrix()`
- `rownames()`
- `colnames()`
- `rowSums()`
- `ncol()`
- `nrow()`

Create a matrix with elements from 1 to 9 with 3 rows:

~~~~
matrix(1:9, byrow = TRUE, nrow = 3)
~~~~


### Accessing elements

i-th row j-th column:

~~~~
m[i,j]
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


**Functions:**
- `factor()`
- `levels()`


Create a `factor` object:

~~~~
>>> state <- c("Active", "Inactive, "Hanging")
>>> state_factor <- factor(state)
>>> state_factor
Active Inactive Hanging Active Active Hanging
~~~~


>>> levels(state_factor)
Active Hanging Inactive

~~~~
>>> levels(state_factor) <- c("A", "H", "I")
>>> state_factor
A I H A A H
~~~~


~~~~
a = state_factor[1]
b = state_factor[2]
a > b
Warning message in Ops.factor(a, b):
“‘>’ not meaningful for factors”
~~~~


--------------------------------------------------------------------------------------

## DataFrames

**Functions:**
- `head()`
- `tail()`
- `datafame()`
- `subset()`

Create a data frame:

~~~~
df <- data.frame(col1, col2, col3, ...)
~~~~

### Selection


Select the `rings` variable in the 4-th row:

~~~~
df[4,"rings"]
~~~~

Select the `rings` column:

~~~~
df$rings
~~~~


### `subset()` query

Query:

~~~~
subset(df, subset=condition)
~~~~


Example:

~~~~
subset(mtcars, subset=mpg < 20)
~~~~


## Ordering

~~~~
>>> a <- c('z', 'b', 'c')
>>> order(a)
2 3 1
~~~~


### Example(s)

Order a dataframe

~~~~
mtcars[order(mtcars$mpg),]
~~~~

------------------------------------------------------------------------------------------


## Lists:

Create a `list` object

Example:

~~~~
l <- list(c(1,2,3), mtcars[1:3,], matrix(1:9, ncol=3))
~~~~

### Naming the elements:

~~~~
names(l) <-  c("c", "cars", "mat")
~~~~

or 

~~~~
l <- list(year=2016, GDP=56, inflation=2.7, CRs=c("A+", "B"))
~~~~


### Selecting elements

~~~~
>>> l$CRs[2]
'B'
~~~~


### Appending a list

~~~~
l2 <- c(l, outlook="positive")
~~~~

------------------------------------------------------------------------------------------

## `datasets` package: built-in datasets

https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html
