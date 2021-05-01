# System commands


**References:**
- https://code.kx.com/q/basics/syscmds/

**System commands:**
- [`\a`](#backslasha) tables
- [`\b`](#backslashb) views
- `\B` pending views
- `\c` console size
- `\cd` change directory
- `\C` HTTP size
- [`\d`](#backslashd) directory
- `\e` error trap client
- `\E` TLS server mode
- [`\f`](#backslashf) functions
- `\g` garbage collection mode
- [`\l`](#backslashl) load file or directory 
- `\o` offset from UTC
- [`\p`](#backslashp) listening port
- [`\P`](#backslashP) precision
- `\r` replication master
- `\r` rename
- `\s` number of secondary threadss
- `\S` random seed
- `\t` timer
- `\T` timeout
- `\ts` time and space
- `\u` reload user password file
- `\v` variables
- `\w` workspace
- `\W` week offset
- `\x` expunge
- `\z` date parsing
- `\1` & `\2`  redirect
- `\_` hide q code
- `\ ` terminate
- `\`  toggle q/k
- `\\` quit

-----------------------------------------------------------------------------------

## `\l` (load file or directory) <a name="backslashl"></a>


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


-----------------------------------------------------------------------------------

## `\P` (precision)<a name="backslashP"></a>



**Syntax:**
~~~~
\P [n]
~~~~



Show or set display precision for floating-point numbers, i.e. the number of digits shown.

The default value is 7 and possible values are in the range [0,17]. A value of 0 means use maximum
precision. This is used when exporting to CSV files.


**Example(s):**

~~~~
q)\P 3
q)1%3
0.333
~~~~
