# `g++` documentation


## `g++` flags

### `- shared`:

Produces a shared object which can then be linked with other objects to form an executable. Not all
systems support this option. For predictable results, you must also specify the same set of options
used for compilation
(-fpic, -fpic, or model suboptions) when you specify this linker option.[1]


### `-fPIC`:

If supported for the target machine, emit position-independent code, suitable for dynamic linking
and avoiding any limit on the size of the global offset table.  This option makes a difference on
the m68k, PowerPC and SPARC.

Position-independent code requires special support, and therefore works only on certain machines.

When this flag is set, the macros "__pic__" and "__PIC__" are defined to 2.

### `-L`

To specify a directory to search for libraries, you just use `-L`:

Example:

~~~~
-L/data[...]/lib
~~~~

### `-l`

To specify the actual library name, you use `-l`:

~~~~
-lfoo  // (links libfoo.a or libfoo.so)
~~~~

### `-I`

To specify a directory to search for include files (different from libraries!) you use -I:

~~~~
-I/data[...]/lib
~~~~

## Enviroment variables 

### `LD_LIBRARY_PATH` enviroment variables

You can temporarily substitute a different library for this particular execution. In linux, the
environment variable `LD_LIBRARY_PATH` is a colon-separated set of directories where libraries
should be searched for first, before the standard set of directories; this is useful when debugging
a new library or using a nonstandard library for special purposes `LD_LIBRARY_PATH` is an
environment variable you set to give the run-time shared library loader (ld.so) an extra set of
directories to look for when searching for shared libraries. Multiple directories can be listed,
separated with a colon (:).


### `-D name=deifnition`

The contents of definition are tokenized and processed as if they appeared during translation phase
three in a `#define` directive.  In particular, the definition will be truncated by embedded newline
characters.

If you are invoking the preprocessor from a shell or shell-like program you may need to use the
shell's quoting syntax to protect characters such as spaces that have a meaning in the shell syntax.

If you wish to define a function-like macro on the command line, write its argument list with
surrounding parentheses before the equals sign (if any).  Parentheses are meaningful to most shells,
so you will need to quote the option.  With `sh` and `csh`, `-D'name(args...)=definition'` works.

`-D` and `-U` options are processed in the order they are given on the command line.  All `-imacros`
file and `-include` file options are processed after all `-D` and `-U` options.


### `-Wall`

Turns on all optional warnings which are desirable for normal code.  At present this
is -Wcomment, -Wtrigraphs, -Wmultichar and a warning about integer promotion causing
a change of sign in "#if" expressions.  Note that many of the preprocessor's
warnings are on by default and have no options to control them.


## Linking

### Linking a library statically

~~~~
-L/path/to/lib -Wl,-Bstatic -llibary
~~~~

Specifying excplicitly the library file name:

~~~~
-L/path/to/lib -Wl,-Bstatic -l:libary.a
~~~~

### Linking a library dynamically

~~~~ 
-L/path/to/lib -Wl,-Bdynamic -llibary
~~~~ 
