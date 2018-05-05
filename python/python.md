# `python`

## Environment variables

### `PYTHONPATH`

Priority of the python search paths:
- https://stackoverflow.com/questions/9586630/python-paths-and-import-order
- https://stackoverflow.com/questions/35617035/change-the-priority-of-pythonpath

## Packages

Get the path to the site packages:
e.g. ./lib/build/anaconda3/lib/python3.5/site-packages

~~~~
import site; site.getsitepackages()
~~~~

Retrieve the path of a package:

~~~~
import a_module
print a_module.__file__
~~~~
