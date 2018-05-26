#!/usr/bin/env python

import ctypes

INTP = ctypes.POINTER(ctypes.c_int)
num = ctypes.c_int(42)
addr = ctypes.addressof(num)
ptr = ctypes.cast(addr, INTP)

print('address:', addr, type(addr))
print('pointer:', ptr)
print('value:', ptr[0])

