# Substitution in `vim`

~~~~
:s/old/new/g       // changes all old to new in the current line
:11,15s/old/new/g  // changes lines 11 to 15 inclusive
:%s/old/new/g      // changes all lines 
~~~~

~~~~
:s/^/new text /       // Insert "new text " at the beginning of the line. 
:s/$/ new text/       // Append " new text" to the end of the line.
:s/green/bright &/g   // Replace each "green" with "bright green" everywhere.
~~~~

Replace a character by a newline:

~~~~
:s/,/\r/g
~~~~

Substitute every instance of the last searched pattern (could be highlighted string with `*`) to
'new string':

~~~~
:%s//new-string/g
~~~~

Add a string to the end of the line, e.g. add a `*` to the end:
~~~~
:%s/$/\*/g 
~~~~

Insert a specific character along all lines on a specific column:

~~~~
:%s/$/                                        /
:v/|/s/^\(........................................\)/\1|/
:%s/  *$//
~~~~

