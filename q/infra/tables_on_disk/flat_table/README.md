# Flat tables on disk

**References:**
- https://code.kx.com/q4m3/11_IO/#112-save-and-load-on-tables
- `set` keyword
    - https://code.kx.com/q/ref/get/#set
    - [docs](./../../../keywords/set.md)
- `get` keyword
    - https://code.kx.com/q/ref/get/
    - [docs](./../../../keywords/set.md)

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

## Saving table flat


### Using `set`

~~~~
(fil;lbs;alg;lvl) set t  set[(fil;lbs;alg;lvl);t] /write t to fil, cmprssd
~~~~

where:
- `fil`   filesymbol       file in the filesystem
- `lbs`   integer atom     logical block size
- `alg`   integer atom     compression algorithm
- `lvl`   integer atom     compression level
- `t`     table


#### Examples


Uncompressed

~~~~
`:/path/to/on_disk/flat_table set table
~~~~


------------------------------------------------------------------------------------------------------------

### Using `save`


#### Examples

~~~~
save `:/path/to/on_disk/flat_table_name
~~~~

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

## Loading a flat table from disk


### Using `get`

#### Examples

~~~~
table: get `:/path/to/on_disk/flat_table
~~~~

------------------------------------------------------------------------------------------------------------

### Using `load`

#### Examples

~~~~
load `:/path/to/on_disk/flat_table_name
~~~~
