# Unix libraries

## Check if library <libname> is installed

~~~~
ldconfig -p | grep <libname>
~~~~

## Examining libraries


### `nm`

**Flags:**

`-a`
`--debug-syms`
    Display all symbols, even debugger-only symbols; normally these are not listed.


`-C`
`--demangle[=style]`
    Decode (demangle) low-level symbol names into user-level names.  Besides removing any initial underscore prepended by
    the system, this makes C++ function names readable. Different compilers have different mangling styles. The optional
    demangling style argument can be used to choose an appropriate demangling style for your compiler.


#### Examples:

**Look at the functions of a library:**

~~~~
nm -Ca <lib.so>
~~~~
