# `Makefile` functions

## Custom functions

~~~~
define generate_file
    sed 's/{NAME}/$(1)/' greetings.tmpl >$(2).txt
endef

all:
    $(call generate_file,John Doe,101)
    $(call generate_file,Peter Pan,102)
~~~~

## Functions for String Substitution and Analysis

### `$(patsubst pattern,replacement,text)`


