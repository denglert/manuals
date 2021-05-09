# `q` command line options

**References:**
- https://code.kx.com/q/basics/cmdline/

~~~~
q [file] [-option [parameters] … ]
~~~~

**Options:**
- `-b` blocked
- `-c` console size
- `-C` HTTP size
- `-e` error traps
- `-E` TLS Server Mode
- `-g` garbage collection
- `-l` log updates
- `-L` log sync
- `-m` memory domain
- `-o` UTC offset
- `-p` listening port
- `-P` display precision 
- `-q` quiet mode
- `-r` replicate
- `-s` secondary threads
- `-S` random seed
- `-t` timer ticks
- `-T` timeout
- `-u` disable syscmds
- `-u` usr-pwd local
- `-U` usr-pwd
- [`-w`](#dashw) workspace
- `-W` start week
- `-z` date format

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

## `-w` (workspace)

~~~~
-w N
~~~~

Workspace limit in MB for the heap per thread.

Default is 0: no limit.


**Releted commands:**
- `\w` system command
- `.Q.w[]`


**Remark(s):**
- *Memory domain-locality*

	Domain-local Since V4.0 2020.03.17 this command is no longer thread-local, but memory domain-local: it sets the limit for domain 0.

- Other ways to limit resources

	On Linux systems, administrators might prefer cgroups as a way of limiting resources.
	On Unix systems, memory usage can be constrained using ulimit, e.g.
	~~~~
	$ ulimit -v 262144 
	~~~~
	limits virtual address space to 256MB.
