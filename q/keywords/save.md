# `save`

**References:**
- https://code.kx.com/q/ref/save/

Write a global variable to file.
writes global variable/s v etc. to file and returns the filename/s.


**Remarks:**
- **File path.**
    If a file
    - exists, it is overwritten
    - does not exist, it is created, with any required parent directories.
- **Format of the output file**

    The format used depends on the file extension:
    - `(none)`binary
    - `csv` comma-separated values
    - `txt` plain text
    - `xls` Excel spreadsheet
    - `xml` Extensible Markup Language (XML)

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------


~~~~
save x     save[x]
~~~~

Where `x` is a symbol atom or vector of the form `[path/to/]v[.ext]` in which
- `v` is the name of a global variable
- `path/to/` is a file path (optional)
- `.ext` is a file extension (optional)

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

## Examples

t:([]x:2 3 5; y:`ibm`amd`intel; z:"npn")
