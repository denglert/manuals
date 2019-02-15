# Various, not yet sorted stuff

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
:set tabstop=5
:set shiftwidth=5
:set expandtab
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

## Aliases

Full path of the current file:
~~~~
%:p 
~~~~

Full path to the directory of the current file:

~~~~
%:p:h
~~~~

Example:
change the working directory to the current file

~~~~
:cd %:p:h
~~~~

change the working directory of the active window to the current file:
~~~~
:lcd %:p:h
~~~~


## Delete lines containing a pattern

http://vim.wikia.com/wiki/Delete_all_lines_containing_a_pattern

~~~~
:g/<pattern>/d
~~~~

E.g.:

~~~~
:g/figure/d
~~~~
