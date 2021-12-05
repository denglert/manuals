# Write csv files


**References:**
- https://code.kx.com/q/ref/file-text/#save-text
- https://code.kx.com/q/learn/tour/csvs/#save
- https://code.kx.com/q/ref/save/
- https://stackoverflow.com/questions/48957015/how-to-save-large-file-with-different-file-name-kdb
- https://code.kx.com/q4m3/11_IO/#1143-preparing-text


**Relevant objects and commands:**
- `0:` the file text operator
- `save`

-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------


## Write csv with `save`

**References:**
- https://code.kx.com/q/ref/save/

### Syntax

~~~~
save x
~~~~

or

~~~~
save[x]
~~~~

where:
- `x` is a symbol atom or vector of the form `[path/to/]v.csv` in which:
    - `v` is the name of a global variable
    - `path/to/` is a file path (optional)
    - `.csv` is the file extension

**Note:**
`save` can be used to write other file formats as well - see more details within the documentation
of the `save` keyword.

----------------------------------------------------------------------------------------------------------------


### Example(s)

~~~~
t:([]a: 3 4 5; b:-1 -2 10)
save `:t.csv
~~~~

-----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------

## Write csv with `0:`

**References:**
- https://code.kx.com/q/ref/file-text/#save-text
- https://code.kx.com/q4m3/11_IO/#1143-preparing-text

### Syntax

~~~~
filesymbol 0: delimiter 0: table
~~~~

or

~~~~
0:[filesymbol; delimiter 0: table]
~~~~

where:
- `filesymbol` is a file symbol
- `delimiter` is a char atom used as delimiter
- `table` is the table to be saved

----------------------------------------------------------------------------------------------------------------


### Example(s)

~~~~
`:t.tsv 0: ("|" 0: t)
~~~~

Saves down `t` to `t.csv` with `|` as a delimiter.
