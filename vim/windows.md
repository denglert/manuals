# windows in `vim`


**References:**
- http://vimdoc.sourceforge.net/htmldoc/windows.html
- http://vim.wikia.com/wiki/Resize_splits_more_quickly


## Resizing

### Height

#### Command

You can resize vertical size of the window with `:resize` or `:res`.
Reize the window to size `nrows`

~~~~
:resize <nrows>
~~~~


Example:

Add 5 more rows:

~~~~
:res +5
~~~~


#### Key binding

Add a single row:

~~~~
Ctrl-w +
~~~~

Remove a single row:

~~~~
Ctrl-w -
~~~~

Increase a window to its maximum height:

~~~~
Ctrl-w _
~~~~


Resize all windows to equal dimensions based on their splits:

~~~~
Ctrl-w =
~~~~

### Width

You can use `:vertical resize` to change the width of the current window. To change the width to
`<ncolumns>` columns, use: 

~~~~
:vertical resize <ncolumns>
~~~~

Example:

Change the width by increments of 5: 

~~~~
:vertical resize +5
~~~~

#### Key binding

Add a single column:

~~~~
Ctrl-w +
~~~~

Remove a single row:

~~~~
Ctrl-w -
~~~~

Increase a window to its maximum width:

~~~~
Ctrl-w |
~~~~

Resize all windows to equal dimensions based on their splits:

~~~~
Ctrl-w =
~~~~


