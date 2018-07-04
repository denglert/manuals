# Data Classes in `python`

**References:**
- https://medium.com/mindorks/understanding-python-dataclasses-part-1-c3ccd4355c34
- https://www.python.org/dev/peps/pep-0557/


Available in python 3.7+.

## import

~~~~
from dataclasses import dataclass
~~~~

Initialization

~~~~
@dataclass
class Number:
    val:int 

>>> one = Number(1)
>>> one.val
>>> 1
~~~~
