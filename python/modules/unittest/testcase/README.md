# `unittest.TestCase`

**References:**
- https://docs.python.org/3/library/unittest.html#unittest.TestCase

Instances of the `TestCase` class represent the logical test units in the unittest universe. This
class is intended to be used as a base class, with specific tests being implemented by concrete
subclasses. This class implements the interface needed by the test runner to allow it to drive the
tests, and methods that the test code can use to check for and report various kinds of failure.

Each instance of `TestCase` will run a single base method: the method named `methodName`. In most uses
of `TestCase`, you will neither change the `methodName` nor reimplement the default `runTest()` method.

Changed in version 3.2: `TestCase` can be instantiated successfully without providing a `methodName`.
This makes it easier to experiment with `TestCase` from the interactive interpreter.

`TestCase` instances provide three groups of methods:
- one group used to run the test
- another used by the test implementation to check conditions and report failures,
- and some inquiry methods allowing information about the test itself to be gathered.

Methods in the first group (running the test) are:

**Methods:**
- Running the test
    - `setUp()`
    - `tearDown()` 
    - `setupClass()` 
    - `tearDownClass()` 
    - `run(result=None)` 
    - `skipTest(reason)` 
    - `subTest(msg=None, **params)` 
    - `debug()` 
- [Assert methods][asserts]


[asserts]: ../asserts/
