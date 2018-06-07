# `os` module docs

**All references:**
- https://docs.python.org/3/library/os.html
- https://docs.python.org/3/library/os.path.html#module-os.path


## `os.environ`

- https://docs.python.org/3/library/os.html

A mapping object representing the string environment. For example, `environ['HOME']` is the pathname
of your home directory (on some platforms), and is equivalent to `getenv("HOME")` in C.

This mapping is captured the first time the `os` module is imported, typically during Python startup
as part of processing `site.py`. Changes to the environment made after this time are not reflected in
`os.environ`, except for changes made by modifying `os.environ` directly.

If the platform supports the `putenv()` function, this mapping may be used to modify the environment
as well as query the environment. `putenv()` will be called automatically when the mapping is
modified.

## `os.path`

- https://docs.python.org/3/library/os.path.html#module-os.path

### `os.path.abspath(path)`


### `os.path.basename(path)`


### `os.path.dirname(path)`


### `os.path.exists(path)`


### `os.path.isfile(path)`


### `os.path.isdir(path)`


### `os.path.join(path)`


### `os.path.split(path)`

