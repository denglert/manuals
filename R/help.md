# Getting help/documentation within `R`

**References:**
- https://www.rdocumentation.org/
- https://www.r-project.org/other-docs.html

## Documentation

### `?/help()` - pull up the docs on a function

~~~~
?function
~~~~

or

~~~~
help(function)
~~~~

Example:

~~~~
?mean
~~~~

### `help.search()` - search the help files for a word or phase

~~~~
help.search(search_term)
~~~~

Example:

~~~~
help.search('weighted mean')
~~~~

### `help(package = pkgname)` - docs on a specific package

~~~~
help(package = pkgname)
~~~~

Example:

~~~~
help(package = 'dplyr')
~~~~

---------------------------------------------------------------------------------------------


## Object inspection

### `str()` object strucutre

~~~~
str(obj)
~~~~

**Example(s):**

~~~~
>>> v <- c(1:3)
>>> str(v)
int [1:3] 1 2 3
~~~~


~~~~
>>> l <- list(1:3)
>>> class(l)
'list'
~~~~

### `class()` - find the class an object belongs to

~~~~
class(obj)
~~~~

**Example(s):**

~~~~
>>> v <- c(1:3)
>>> class(v)
'integer'
~~~~

~~~~
>>> l <- list(1:3)
>>> class(l)
List of 1
 $ : int [1:3] 1 2 3
~~~~


## Environment inspection

### Loaded packages

~~~~
search()
~~~~

### List all variables

~~~~
ls()
~~~~
