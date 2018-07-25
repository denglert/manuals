# Finding substrings

**Available commands:**
- `str.rfind()`
- `str.find()`

## `str.find(sub[, start[, end])`

Return the lowest index in the string where substring `sub` is found within the slice
`s[start:end]`.  Optional arguments start and end are interpreted as in slice notation. Return -1 if
sub is not found.


Note:

The `find()` method should be used only if you need to know the position of sub. To check if sub is a
substring or not, use the `in` operator:

~~~~
>>> 'Py' in 'Python'
True
~~~~

## `str.rfind(sub[, start[, end])`


Return the highest index in the string where substring `sub` is found, such that `sub` is contained
within `s[start:end]`. Optional arguments start and end are interpreted as in slice notation. Return
`-1` on failure.


## `str.index(sub[, start[, end]])`

Like `find()`, but raise `ValueError` when the substring is not found.


## str.rindex(sub[, start[, end]])

Like `rfind()` but raises `ValueError` when the substring sub is not found.


## Example(s)

~~~~
filename = "workspace_mX_400.root"
mX_index = filename.find('mX')
~~~~

