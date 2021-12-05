# `read1`

**References:**
- https://code.kx.com/q/ref/read0/

Read text from a file or process handle.


## Syntax

~~~~
read0 f       
read0 (f;o;n) 
read0 h       
read0 (fifo;n)
~~~~

or

~~~~
read0[f]
read0[(f;o;n)]
read0[h]
read0[(fifo;n)]
~~~~

where:
- `f` is a file symbol
- `(f; o; n)` is a file descriptor
- `h` is a system or connection handle
- `fifo` is a communication handleto a fifo
- `n` is a non-negative integer


## File symbol case


~~~~
read0 f       
~~~~

or 


~~~~
read0[f]       
~~~~


Returns the lines of the file as a list of strings.
Lines are assumed delimited by either `LF` or `CRLF`, and the delimiters are removed.

### Example(s)

~~~~
read0 `:test.txt
~~~~
