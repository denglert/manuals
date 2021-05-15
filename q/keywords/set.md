# `set`

**References:**
- https://code.kx.com/q/ref/get/#set

Assign a value to a global variable.
Persist an object as a file or directory.

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

## Syntax

~~~~
nam set y                  set[nam;y]                     / set global variable nam
fil set y                  set[fil;y]                     / serialize y to fil
dir set t                  set[dir;t]                     / splay t to dir
(fil;lbs;alg;lvl) set y    set[(fil;lbs;alg;lvl);y]       / write y to fil, compressed
(dir;lbs;alg;lvl) set t    set[(dir;lbs;alg;lvl);t]       / splay t to dir, compressed
(dir;dic) set t            set[(dir;dic);t]               / splay t to dir, compressed
~~~~


where

~~~~
alg   integer atom     compression algorithm
dic   dictionary       compression specifications
dir   filesymbol       directory in the filesystem
fil   filesymbol       file in the filesystem
lbs   integer atom     logical block size
lvl   integer atom     compression level
nam   symbol atom      valid q name
t     table
y     (any)            any q object
~~~~


----------------------------------------------------------------------------------------------------------------------

### Splayed table


Splayed table

To splay a table `t` to directory `dir`
- `dir` must be a filesymbol that ends with a `/`
- `t` must have no primary keys
- columns of `t` must be vectors or compound lists
- symbol columns in `t` must be fully enumerated


----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

## Examples

### Setting a variable

~~~~
`a set 42  / set global variable
`a
~~~~

~~~~
a
42
~~~~

----------------------------------------------------------------------------------------------------------------------

### Serializing an object to file on disk

~~~~
`:a set 42                        / serialize object to file
`:a
~~~~

----------------------------------------------------------------------------------------------------------------------

### Splay a table to disk


~~~~
t: ([]tim:100?23:59; qty:100?1000)
`:tbl/ set t
~~~~

----------------------------------------------------------------------------------------------------------------------

### Serialize to disk with compression


~~~~
(`:ztbl;17;2;6) set t             / serialize compressed
`:ztbl
~~~~

----------------------------------------------------------------------------------------------------------------------

### Serialize to disk with compression


~~~~
(`:ztbl/;17;2;6) set t            / splay table compressed
`:ztbl/
~~~~
