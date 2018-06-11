# `glob` manuals

**All references:**
- https://docs.python.org/3/library/glob.html


The `glob` module finds all the pathnames matching a specified pattern according
to the rules used by the Unix shell, although results are returned in arbitrary
order. No tilde expansion is done, but `*`, `?`, and character ranges expressed
with `[]` will be correctly matched. This is done by using the `os.scandir()` and
`fnmatch.fnmatch()` functions in concert, and not by actually invoking a
subshell. Note that unlike `fnmatch.fnmatch()`, `glob` treats filenames beginning
with a dot (`.`) as special cases. (For tilde and shell variable expansion, use
`os.path.expanduser()` and `os.path.expandvars()`.)


## `glob.glob(pathname, *, recursive=False)`

Return a possibly-empty list of path names that match `pathname`, which must be
a string containing a path specification. `pathname` can be either absolute
(like `/usr/src/Python-1.5/Makefile`) or relative (like `../../Tools/*/*.gif`),
and can contain shell-style wildcards. Broken symlinks are included in the
results (as in the shell).


### Example(s)


Text files in the current dir:

~~~~
text_files = glob.glob('*.txt')
~~~~


Data files in a path:

~~~~
text_files = glob.glob('/some/remote/path/*.data')
~~~~
