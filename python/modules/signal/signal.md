# `signal` manuals

This module provides mechanisms to use signal handlers in Python.




## Variables


### `signal.SIG_DFL`

This is one of two standard signal handling options; it will simply perform the
default function for the signal. For example, on most systems the default
action for `SIGQUIT` is to dump core and exit, while the default action for
`SIGCHLD` is to simply ignore it.


### `signal.SIGINT`


## Functions

### `signal.signal(signalnum, handler)`


Set the handler for signal `signalnum` to the function `handler`. `handler` can
be a callable Python object taking two arguments (see below), or one of the
special values `signal.SIG_IGN` or `signal.SIG_DFL`. The previous signal handler
will be returned (see the description of getsignal() above). (See the Unix `man`
page signal(2).)

When threads are enabled, this function can only be called from the main
thread; attempting to call it from other threads will cause a `ValueError`
exception to be raised.

The `handler` is called with two arguments:
- the signal number and
- the current stack frame (`None` or a frame object; for a description of frame
objects, see the description in the type hierarchy or see the attribute
descriptions in the inspect module).

On Windows, `signal()` can only be called with `SIGABRT`, `SIGFPE`, `SIGILL`,
`SIGINT`, `SIGSEGV`, `SIGTERM`, or `SIGBREAK`.  A `ValueError` will be raised
in any other case.  Note that not all systems define the same set of signal
names; an AttributeError will be raised if a signal name is not defined as SIG
*module level constant.



## Example(s)

Receiving the signal `signal.SIGINT` (KeyBoard interrupt) perform
`signal.SIG_DFL` (the default function for the signal):

~~~~
signal.signal(signal.SIGINT, signal.SIG_DFL)
~~~~
