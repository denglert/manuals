# `vim` tips and tricks


## Basic

### Getting help

~~~~
:help                 // help menu
:help subject         // search for a subject
:help subject<CTRL-D> // list all possible matches for the subject
~~~~

To list all possible matches for an unfinished command, press `<CTRL-D>`.

Example:

~~~~
:col <CTRL-D>
~~~~


### Moving around the file

Move cursor the beginning of the file:

~~~~
gg
~~~~

Move cursor the end of the file:

~~~~
G 
~~~~

Position the screen, while keeping the cursor fixed (top/center/bottom):

- top:    `zt`
- center:` zz`
- bottom: `zb`

Position the cursor, while keeping the screen fixed (top/center/bottom):

- top:    `H`
- center: `M`
- bottom: `L`


Move cursor the line no. {linenumber}

~~~~
{linenumber}G
~~~~

or 

~~~~
{linenumber}gg
~~~~

Move cursor to revious position:
~~~~
''
~~~~

Move cursor the previous positions:
~~~~
CTRL-O
~~~~

Move cursor to recent positions:
~~~~
CTRL-I
~~~~

Placing marks by:
~~~~
m{markletter}
~~~~

Jumping to mark {markletter}:
~~~~
'{markletter}
~~~~


Scroll windows downwards by half a screen:
~~~~
CTRL-D
~~~~

Move forward till you find space in a line:
~~~~
f <space>
~~~~

### Text editing

Visual replace:

1. Press `v`.
2. Select block.
3. `c` change


Select the whole document:
~~~~
ggVG 
~~~~

### Delete

Delete including <char>:

~~~~
df<char>
~~~~

Delete till <char>:

~~~~
dt<char>
~~~~

## Insert

Insert before:

1. yank the text you want to paste
2. `CTRL+V` the lines
3. Press `I`
4. `CTRL+R`
5. `"`

## Tabs

Split current tab into two:

~~~
:tab split
~~~

## Folding

- `zR`: fold remove
- `zo`: fold open
- `zc`: fold close
- `zr`: fold reduce
- `zm`: fold more


## Macros

Recording a macro on the fly by:
~~~~
:q{macroletter}
~~~~

Replay macro by:
~~~~
@{macroletter}
~~~~

Apply macro to lines 5 through 10:

~~~~
:5,10norm! @a
~~~~

## Spellcheck

~~~~
:set spell spelllang=en_us
~~~~

##  Searching for an expression

`/`: forwards search
`?`: backwards search

`*`: search for the expression under the cursor

`n` - next match
`N` - previous match 

Ignore the case of the letter:
~~~~
:set ignorecase
~~~~

Distinguish the case:
~~~~
:set noignorecase
~~~~

Disable the highlighting:
~~~~
:nohlsearch
~~~~

## Substitution


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

## Various (unsorted)

~~~~
:set paste
:set nopaste 
~~~~


Join lines together:
~~~~
J
~~~~

Break long lines into multiple lines:

~~~~
gq{motion}
{Visual}gq
gqq
~~~~


Adjust textwidth:
~~~~
:set tw=80
~~~~


Commenting a section:

1. `CTRL-V` (block mode)
2. `c`
3. `{comment characters}`
4. `ESC`


Split window:

~~~~
:split OR :sp
:vsplit OR :vsp
~~~~

Switching between splits:

~~~~
CTRL+w left/right
~~~~

Show name of the file currently being edited:
~~~~
CTRL+g
~~~~

Show the full path of the file currently being edited:
~~~~
1 CTRL+g
~~~~

Differentiating:

~~~~
:diffthis
~~~~


Tabulation and spaces:

~~~~
:set tabstop=2
:set noexpandtab
:retab!
~~~~

Automatic file completion:

~~~~
CTRL-X CTRL-F
~~~~


Syntax highlighting:
~~~~
:colorscheme evening
~~~~

Word wrap on the a selected interval of lines:
~~~~
:101,141!fold -w100
~~~~

Endline workaround (forgot what this was?)::
~~~~
^V means CTRL+V and
^M means CTRL+M
:%s/^V^M/^V^M/g
~~~~
