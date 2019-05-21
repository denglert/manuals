# Spellcheck in `vim`

**References:**
- http://thejakeharding.com/tutorial/2012/06/13/using-spell-check-in-vim.html


**Set language:**

~~~~
:set spelllang=en_us
~~~~


**Activate spell check:**

~~~~
:set spell
~~~~

or

~~~~
:set spelllocal
~~~~


**Moving around:**

- `]s`: Move to the next misspelled word
- `[s`: Move to the previous misspelled word



**Get spelling suggestions:**

~~~~
z=
~~~~

-----------------------------------------------------------------------------

## LateX documents

**Reference(s):**
- https://stackoverflow.com/questions/23353009/vim-spellcheck-not-always-working-in-tex-file-check-region-in-vim

Sometimes the spell check feature does not work properly in for latex documents.

To enable it try issuing:

~~~~
setlocal spell spelllang=en_us
syntax sync fromstart
syntax spell toplevel
~~~~


