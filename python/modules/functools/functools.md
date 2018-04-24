# `functools` manuals

> Higher-order functions and operations on callable objects

**References:**
- https://docs.python.org/3/library/functools.html
- https://stackoverflow.com/questions/17159065/function-restriction-by-fixing-an-argument


`functools.partial`:

Return a new partial object which when called will behave like func called with the positional
arguments args and keyword arguments keywords. If more arguments are supplied to the call, they are
appended to args. If additional keyword arguments are supplied, they extend and override keywords.
Roughly equivalent to:
~~~~
def partial(func, *args, **keywords):
    def newfunc(*fargs, **fkeywords):
        newkeywords = keywords.copy()
        newkeywords.update(fkeywords)
        return func(*args, *fargs, **newkeywords)
    newfunc.func = func
    newfunc.args = args
    newfunc.keywords = keywords
    return newfunc
~~~~

The partial() is used for partial function application which “freezes” some
portion of a function’s arguments and/or keywords resulting in a new object
with a simplified signature

Example:

~~~~
def sin(x, frequency):
    np.sin(x*2*np.pi*frequency)

sin_2Hz = functools(sin, frequency=2.0)
~~~~
