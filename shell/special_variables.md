# Shell special variables

- `$0`: the filename of the current script
- `$#`: the number of arguments supplied to a script
- `$*`: all the arguments are double quoted. If a script receives two arguments, $* is equivalent to
  $1 $2
- `$$`: the process number of the current shell. For shell scripts, this is the process ID under
  which they are executing.
- `$!`: the process number of the last background command
