# Splayed tables

**References:**
- https://code.kx.com/q/kb/splayed-tables/


## Database infastructure of splayed tables


### `.d` (schema)

The `.d` file stored the schema of a splayed database


~~~~
value `:<path-to-.d-file>
~~~~


--------------------------------------------------------------------------------------

## Relevant commands

- Saving splayed tables
- Enumerating symbol columns
- Loading splayed tables

--------------------------------------------------------------------------------------

### Saving splayed tables 

Saving `table` in directory `<path-to-dir>`:

~~~~
`:<path-to-dir>/ set table
~~~~

where
- `table` table must be
    - fully enumerated; i.e. no repeated symbols
    - simple, not keyed


--------------------------------------------------------------------------------------

### Enumerating symbol columns

If a table contains columns of type `symbol` with repeated items (i.e. the table is not fully
enumerated), trying to save it splayed will result in a type error.

**Solution:** enumerate symbol columns before saving the table splayed.


Create a enumerated table from `table` and save it down to disk:

~~~~
table_enumerated: .Q.en[`:<path-to-root-dir>/] table
`:<path-to-dir> set table_enumerated
~~~~


--------------------------------------------------------------------------------------

### Loading splayed tables

**References:**
- https://code.kx.com/q/kb/splayed-tables/#loading-splayed-tables



