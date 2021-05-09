# `\d`

**References:**
- https://code.kx.com/q/basics/syscmds/#d-directory

Sets the current namespace (also known as directory or context).

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

## Syntax

~~~~
\d [namespace]
~~~~

The namespace can be empty, and a new namespace is created when an object is
defined in it.  The q session prompt indicates the current namespace.


-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

## Examples


~~~~
\d                  / default namespace
~~~~

~~~~
\d .o               / change to .o
~~~~
