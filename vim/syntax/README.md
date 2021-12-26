# Syntax highlighing on vim

**References:**
- https://github.com/jparise/vim-graphql/issues/52
- https://www.cyberciti.biz/faq/turn-on-or-off-color-syntax-highlighting-in-vi-or-vim/


---------------------------------------------------------------------------

## Relevant commands

~~~~
syntax on
~~~~

~~~~
setlocal syntax?
~~~~

~~~~
color solarized
~~~~


---------------------------------------------------------------------------

## Syntax highlighting for`.q` files

**References:**
- https://github.com/katusk/vim-qkdb-syntax


**Symptom:**
Syntax highlighting doesn't work on `.q` files.
 
**Solution:**

Comment out the below files in `.vim/general/general.vim`:

~~~~
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
~~~~

Add the below to the end of .vimrc

~~~~
syntax on
set background=dark
color solarized
set t_Co=256
set hlsearch
~~~~
