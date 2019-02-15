# Basic

## Getting help

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


## Moving around the file

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

## Text editing

Visual replace:

1. Press `v`.
2. Select block.
3. `c` change


Select the whole document:
~~~~
ggVG 
~~~~

## Delete

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

## Line numbers

Turn on/off:

~~~~
:set [no]nu
~~~~

Relative line numbers:

~~~~
:set [no]relativenumber
~~~~

