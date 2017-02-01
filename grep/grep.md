# Collection of grep commands

## Basic

Recursive search within a directory

~~~~
grep --color -R 'word' /path/to/dir
~~~~

Reject matches with string

~~~~
grep -v "rejectword"
~~~~

List all files containing <pattern>

~~~~
grep -rnw 'directory' -e "pattern"
grep --include=\*.{c,h} -rnw 'directory' -e "pattern"
grep --exclude=*.o -rnw 'directory' -e "pattern"
~~~~

## Regular expression

~~~~
ls | grep 'events_withphi_\([0-1]\|[2-3]\)'
ls | grep 'events_withphi_\([0-9]\|[0-9][0-9]\|[1][0-9][1-9]\)_'
~~~~

## Inverted search

Find files that do not contain a text string
Note: Can be useful for searching for unfinished jobs

~~~~
grep -rL 'pattern'
~~~~

Example: 

~~~~
grep -rL 'Stopping' $(find . -name "*.log")
~~~~
