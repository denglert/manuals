# `datetime` manuals


**Reference:**
- https://docs.python.org/3/library/datetime.html
- `numpy`:
  - https://docs.scipy.org/doc/numpy-1.14.0/reference/arrays.datetime.html


## Basics

Create `datetime.datetime`

~~~~
time = datetime.datetime(year,month,day,hour,minute)
~~~~

Get current datetime:

~~~~
time_now = datetime.datetime.now()
~~~~



----------------------------------------------------------
----------------------------------------------------------


## Conversion


### From `datetime.datetime`


#### `datetime.datetime` to `np.datetime64`


~~~~
date = datetime.datetime.now()  
np.datetime64(date)
~~~~




### `datetime.datetime` to UNIX time


~~~~
import datetime
import time
dt = datetime.datetime(2010, 2, 25, 23, 23)
time.mktime(dt.timetuple())
~~~~

### `timedelta` to human readable string

hours, remainder = divmod(s, 3600)
minutes, seconds = divmod(remainder, 60)
print('%sh %sm %ss').format(hours, minutes, seconds)


#### `datetime.datetime` to `pd.datetime`

~~~~
date = datetime.datetime.now()  
pd.to_datetime(date)
~~~~


----

### To `datetime.datetime`


#### `string` to `datetime.datetime`


~~~~
str = 'Jun 1 2005  1:33PM'
format = '%b %d %Y %I:%M%p'
date = datetime.strptime(str, format)
~~~~



