# `Exception`s in python

**All references:**
- https://docs.python.org/3/tutorial/errors.html

## Raising `Exception`s

~~~~
raise <ExceptionClassName>
~~~~

Example:

~~~~
raise ValueError
~~~~

## User-defined `Exception`s

- https://docs.python.org/3/tutorial/errors.html#user-defined-exceptions

Programs may name their own exceptions by creating a new exception class.
Exceptions should typically be derived from the `Exception` class, either
directly or indirectly.

Exception classes can be defined which do anything any other class can do, but
are usually kept simple, often only offering a number of attributes that allow
information about the error to be extracted by handlers for the exception. When
creating a module that can raise several distinct errors, a common practice is
to create a base class for exceptions defined by that module, and subclass that
to create specific exception classes for different error conditions.


### Example(s)

`Exception` class called `Error` derived from the `Exception` class:

~~~~
class Error(Exception):
    """Base class for exceptions in this module."""
    pass
~~~~

`Exception` class called `InputError` derived from the `Error` class:

~~~~
class InputError(Error):
    """Exception raised for errors in the input.

    Attributes:
        expression -- input expression in which the error occurred
        message -- explanation of the error
    """

    def __init__(self, expression, message):
        self.expression = expression
        self.message = message
~~~~

`Exception` class called `TransitionError` derived from the `Error` class:

~~~~
class TransitionError(Error):
    """Raised when an operation attempts a state transition that's not
    allowed.

    Attributes:
        previous -- state at beginning of transition
        next -- attempted new state
        message -- explanation of why the specific transition is not allowed
    """

    def __init__(self, previous, next, message):
        self.previous = previous
        self.next = next
        self.message = message
~~~~
