# Shell streams

- 1: is the standard output (stdout).
- 2: is the standard error (stderr).


Example:

https://stackoverflow.com/questions/818255/in-the-shell-what-does-21-mean

~~~~
g++ lots_of_errors 2>&1 | head
~~~~

> Here is one way to remember this construct (although it is not entirely accurate): at first, 2>1 may
> look like a good way to redirect stderr to stdout. However, it will actually be interpreted as
> "redirect stderr to a file named 1". & indicates that what follows is a file descriptor and not a
> filename. So the construct becomes: 2>&1.
