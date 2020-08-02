# Mock 

**References:**
- https://docs.python.org/3/library/unittest.mock.html
- https://www.toptal.com/python/an-introduction-to-mocking-in-python


**Note:**
- [Mock is included in the standard library as of Python 3.3](https://www.python.org/dev/peps/pep-0417/)
- [Prior distributions will have to use the Mock library downloadable via PyPI.](https://pypi.org/project/mock)


--------------------------------------------------------------

## `mock.patch`

**References:**
- https://docs.python.org/3/library/unittest.mock.html#unittest.mock.patch

''A patch temporarily replaces the target with a different object.''

`patch()` acts as a
- function decorator
- class decorator or
- a context manager.
Inside the body of the function or with statement, the `target` is patched with
a new object. When the function/with statement exits the patch is undone.


**Syntax:**

~~~~
unittest.mock.patch(target,
					new=DEFAULT,
                    spec=None,
                    create=False,
                    spec_set=None,
					autospec=None,
					new_callable=None,
					**kwargs
~~~~


**Arguments:**
- `target` : `str`
	Target object to be patched, which should be a string in the form 'package.module.ClassName'.
	The target is imported and the specified object replaced with the new
	object, so the target must be importable from the environment you are
	calling `patch()` from.
	The target is imported when the decorated function is executed, not at
	decoration time.
- `new` : object, default value : "DEFAULT"
	Object to replace the target with. 
	If `new` is omitted, then the target is replaced with an `AsyncMock` if the
	patched object is an async function or a `MagicMock` otherwise.
	- If `patch()` is used as a decorator and new is omitted, the created mock is
	passed in as an extra argument to the decorated function.
	- If `patch()` is used as a context manager the created mock is returned by
	the context manager.
- `spec` : `bool`
- `create` : 
- `spec_set` : `bool`
- `autospec` : `bool`
	If you set `autospec=True` then the mock will be created with a spec from the
	object being replaced. All attributes of the mock will also have the spec of
	the corresponding attribute of the object being replaced. Methods and functions
	being mocked will have their arguments checked and will raise a `TypeError` if
	they are called with the wrong signature. For mocks replacing a class, their
	return value (the ‘instance’) will have the same spec as the class. 
`new_callable` : callable
	Allows you to specify a different class, or callable object, that will be
	called to create the new object. By default `AsyncMock` is used for async
	functions and `MagicMock` for the rest.



### `Auto-specing`

**References:**
- https://docs.python.org/3/library/unittest.mock.html#auto-speccing
