#!/usr/bin/env python

import time

def my_timer(orig_func):

    def wrapper(*args, **kwargs):
        t1 = time.time()
        result = orig_func(*args, **kwargs)
        t2 = time.time()
        dt = t2 - t1
        print('{} ran in: {} sec'.format(orig_func.__name__, dt) )
        return result

    return wrapper

@my_timer
def display_info(name, age):
    time.sleep(1)
    print('display_info ran with arguments ({}, {})'.format(name, age) )


display_info('John Wick', 35)
