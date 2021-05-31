# `\l` (load file or directory)

**References:**
- https://code.kx.com/q/basics/syscmds/#l-load-file-or-directory

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

## Syntax

~~~~
\l name
\l .
~~~~

Where `name` is the name of a
- q script, executes the script
- serialized object, deserializes it into memory as variable `name`
- directory of a splayed table, maps the table to variable `name`,
	without loading any columns into memory
- directory and the value of one of the permitted partition types,
	the most recent partition directory is inspected for splayed directories and each such directory mapped into memory with the name of the splayed directory
- directory containing a kdb+ database,
	recursively loads whatever it finds there: serialized objects, scripts, splayed tables, etc.

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

## Examples


~~~~
\l sp.q
~~~~

~~~~
\l db/tickdata
~~~~
