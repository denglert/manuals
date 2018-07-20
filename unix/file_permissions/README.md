# File permissions in UNIX


## Setting permission (`chmod`)

**References:**
- http://rcsg-gsir.imsb-dsgi.nrc-cnrc.gc.ca/documents/basic/node28.html


To use `chmod`, the user must be the owner of the file.


### Syntax

~~~~
chmod [options] mode path
~~~~


where `mode` can be:
- explicit specification through `[ugo]+|-[rwx]`


	- `u`: permission for user/owner. 
	- `g`: permission for group. 
	- `o`: permission for others. 
	- `r`: read permission. 
	- `w`: write permission. 
	- `x`: execute permission. 

- encoded specification through three octal numbers
	`r` with weight 4
    `w` with weight 2
	`x` with weight 1

	Example:
	
	~~~~
	rwx rwx r-- = 111 111 100 (binary) = 4+2+1 4+2+1 4 (octal) = 774
	~~~~


**Possible options:**
`-c`, `--changes`
       like verbose but report only when a change is made

`-f`, `--silent`, `--quiet`
       suppress most error messages

`-v`, `--verbose`
       output a diagnostic for every file processed

`--no-preserve-root`
       do not treat '/' specially (the default)

`--preserve-root`
       fail to operate recursively on '/'

`--reference=RFILE`
       use RFILE's mode instead of MODE values

`-R`, `--recursive`
       change files and directories recursively

`--help` display this help and exit

`--version`
       output version information and exit


### Example

Recursively give `rwx` permissions to group member for all files/directories residing within the current directory:

~~~~
chmod -R g+rwx ./
~~~~

---------------------------------------------------------------------------------

## Setting owner (`chown`)


