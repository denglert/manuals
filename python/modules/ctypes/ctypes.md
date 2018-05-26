# `ctypes` manuals

> ctypes is a foreign function library for Python. It provides C compatible data types, and allows
> calling functions in DLLs or shared libraries. It can be used to wrap these libraries in pure
> Python.


**References:**
- https://docs.python.org/3.6/library/ctypes.html
- https://docs.python.org/3.6/library/ctypes.html#accessing-functions-from-loaded-dlls
- https://stackoverflow.com/questions/8783302/passing-c-double-pointer-to-python
- https://stackoverflow.com/questions/5783761/ctypes-construct-pointer-from-arbitrary-integero
- https://stackoverflow.com/questions/9143440/python-loading-c-lib-with-cdll-doesnt-see-libraries-in-the-python-path

## Examples

### Loading in dynamic link libraries

~~~~
clib = ctypes.cdll.LoadLibrary(clib_path)
~~~~

If the function name is mangled, and `clib.funcname()` doesn't work try retrieving it with `getattr()`:

~~~~
getattr(libRooFit, "_ZTI11RooDataHist")
~~~~

### Construct an int pointer

~~~~
INTP = ctypes.POINTER(ctypes.c_int)
num = ctypes.c_int(42)
addr = ctypes.addressof(num)
ptr = ctypes.cast(addr, INTP)

print('address:', addr, type(addr))
print('pointer:', ptr)
print('value:', ptr[0])
~~~~

Output:

~~~~
address: 139703361734256 <class 'int'>
pointer: <__main__.LP_c_int object at 0x7f0f391b0400>
value: 42
~~~~
