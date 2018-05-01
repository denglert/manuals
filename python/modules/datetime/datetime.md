# `datetime` manuals


**Reference:**
- https://docs.python.org/3/library/datetime.html
- `numpy`:
  - https://docs.scipy.org/doc/numpy-1.14.0/reference/arrays.datetime.html

String to datetime:

~~~~
datetime_object = datetime.strptime('Jun 1 2005  1:33PM', '%b %d %Y %I:%M%p')
~~~~


Specify datetime:

~~~~
time = datetime.datetime(year,month,day,hour,minute)
~~~~


Get current datetime:

~~~~
time_now = datetime.datetime.now()
~~~~


Convert to UNIX time:

~~~~
import datetime
import time
dt = datetime.datetime(2010, 2, 25, 23, 23)
time.mktime(dt.timetuple())
~~~~
