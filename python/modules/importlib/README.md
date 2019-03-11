# `importlib` module

**References:**
- https://docs.python.org/3/library/importlib.html
- https://stackoverflow.com/questions/21347745/python-importlib-import-module-adding-to-globals
- https://stackoverflow.com/questions/2349991/how-to-import-other-python-files




## `import_module(name, package=None)`

- https://docs.python.org/3/library/importlib.html#importlib.import_module

Import a module during runtime.

~~~~
module = importlib.import_module(module_name)
~~~~

**Example:**

~~~~
stats = importlib.import_module("scipy.stats")
~~~~
