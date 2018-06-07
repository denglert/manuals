# `shutil` docs


**All references:**
- https://docs.python.org/3.6/library/shutil.html
- https://docs.python.org/3.6/library/shutil.html#shutil.copy
- https://docs.python.org/3.5/library/shutil.html#shutil.copyfile
- https://docs.python.org/3.6/library/shutil.html#shutil.copy2


## Copy file

### `shutil.copyfile(src, dst, *, follow_symlinks=True)`

- https://docs.python.org/3.6/library/shutil.html#shutil.copyfile

Copy the contents (no metadata) of the file named `src` to a file named `dst` and return `dst`.
`src` and `dst` are path names given as strings. `dst` must be the complete target file name; look
at `shutil.copy()` for a copy that accepts a target directory path. If `src` and `dst` specify the
same file, `SameFileError` is raised.

~~~~
shutil.copyfile(src, dst)
~~~~

### `copy(src, dst, *, follow_symlinks=True)`

- https://docs.python.org/3.6/library/shutil.html#shutil.copy
- https://stackoverflow.com/questions/45126572/how-to-copy-a-file-to-a-specific-folder-in-a-python-script

Copies the file `src` to the file or directory `dst`. `src` and `dst` should be strings. If `dst` specifies a
directory, the file will be copied into `dst` using the base filename from `src`. Returns the path to
the newly created file.

If `follow_symlinks` is false, and `src` is a symbolic link, `dst` will be created as a symbolic link. If
`follow_symlinks` is true and `src` is a symbolic link, `dst` will be a copy of the file `src` refers to.

`copy()` copies the file data and the file’s permission mode (see `os.chmod()`). Other metadata, like
the file’s creation and modification times, is not preserved. To preserve all file metadata from the
original, use `copy2()` instead.

~~~~
shutils.copy(src, dst)
~~~~

### `copy2(src, dst, *, follow_symlinks=True`

- https://docs.python.org/3.6/library/shutil.html#shutil.copy2
