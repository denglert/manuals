# `ps` (process status)

The `ps` utility displays a header line, followed by lines containing informa-
tion about all of your processes that have controlling terminals.

**Synopsis:**

~~~~
ps [-AaCcEefhjlMmrSTvwXx] [-O fmt | -o fmt] [-G gid[,gid...]]
   [-g grp[,grp...]] [-u uid[,uid...]] [-p pid[,pid...]] [-t tty[,tty...]]
   [-U user[,user...]]
ps [-L]
~~~~


--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

## Flags

- `-A`: Display information about other users' processes, including those
without controlling terminals.


- `-a` Display information about other users' processes as well as your own. 
		This will skip any processes which do not have a controlling terminal,
		unless the `-x` option is also specified.

- `-C` Change the way the CPU percentage is calculated by using a ``raw'' CPU
		calculation that ignores ``resident'' time (this normally has no effect).

- `-c` Change the ''command'' column output to just contain the executable
		name, rather than the full command line.

- `-d` Like `-A`, but excludes session leaders.

- `-E` Display the environment as well.  This does not reflect changes in
       the environment after process launch.

- `-e`: Identical to `-A`

- `-f` Display the uid, pid, parent pid, recent CPU usage, process start time,
		controlling tty, elapsed CPU usage, and the associated command.
		If the `-u` option is also used, display the user name rather
        then the numeric uid.  When `-o` or `-O` is used to add to the display
        following `-f`, the command field is not truncated as severely as it
        is in other formats.
- ...

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

## Examples


~~~~
<terminal>$ ps | head
  PID TTY           TIME CMD
  521 ttys000    0:00.11 -bash
11114 ttys001    0:00.04 -bash
11147 ttys001    0:00.01 tmux -2
~~~~


~~~~
<terminal>$ ps -af | head
  UID    PID  PPID   C STIME   TTY           TIME CMD
 <uid>   521   520   0 Mon08am ttys000    0:00.11 -bash
 <uid> 11114 11113   0  9:02am ttys001    0:00.04 -bash
 <uid> 11147 11114   0  9:02am ttys001    0:00.01 tmux -2
~~~~

