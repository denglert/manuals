# Troubleshooting within `q`/`kdb`


**References:**
- https://code.kx.com/q/basics/errors/
- http://www.timestored.com/kdb-guides/errors/abort

-------------------------------------------------------------------------------------

## `-w abort`

**References:**
- https://code.kx.com/q/basics/errors/
- http://www.timestored.com/kdb-guides/errors/abort
- https://stackoverflow.com/questions/39669144/prevent-kdb-database-from-dying-due-to-abort-error


**Sympton:**

q process restarts/quits and the following is printed in the log file:

~~~~
-w abort
~~~~

**Reason:**
malloc hit -w limit or \w limit

