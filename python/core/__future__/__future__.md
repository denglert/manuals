# `__future__` module

**References:**
- https://docs.python.org/3.7/library/__future__.html
- https://docs.python.org/3/reference/simple_stmts.html#future-statements
- https://stackoverflow.com/questions/7075082/what-is-future-in-python-used-for-and-how-when-to-use-it-and-how-it-works



Purpose of the `__future__` module:

- To avoid confusing existing tools that analyze `import` statements and expect
	to find the modules they’re importing.

- To ensure that future statements run under releases prior to 2.1 at least
	yield runtime exceptions (the import of `__future__` will fail, because there was
	no module of that name prior to 2.1).

- To document when incompatible changes were introduced, and when they will be
	- or were - made mandatory. This is a form of executable documentation, and can
	be inspected programmatically via importing `__future__` and examining its
	contents.

