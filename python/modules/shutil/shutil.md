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


## Move file

- https://docs.python.org/3/library/os.path.html#module-os.path

### `shutil.move(src, dst, copy_function=copy2)`

Recursively move a file or directory (`src`) to another location (`dst`) and return the destination.

If the destination is an existing directory, then `src` is moved inside that directory. If the
destination already exists but is not a directory, it may be overwritten depending on `os.rename()`
semantics.

If the destination is on the current filesystem, then `os.rename()` is used. Otherwise, `src` is
copied to `dst` using `copy_function` and then removed. In case of symlinks, a new symlink pointing
to the target of `src` will be created in or as `dst` and `src` will be removed.

If `copy_function` is given, it must be a callable that takes two arguments `src` and `dst`, and
will be used to copy `src` to `dst` if `os.rename()` cannot be used. If the source is a directory,
`copytree()` is called, passing it the `copy_function()`. The default `copy_function` is `copy2()`.
Using `copy()` as the `copy_function` allows the move to succeed when it is not possible to also
copy the metadata, at the expense of not copying any of the metadata.
