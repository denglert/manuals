# System commands


**References:**
- https://code.kx.com/q/basics/syscmds/


System commands control the q environment. They have the form:

~~~~
\cmd [p]
~~~~


for some command cmd, and optional parameter list p.


List of system commands:
- [`\P` (precision)](#precision)


--------------------------------------------------------------------


## `\P` (precision)<a name="precision"></a>



**Syntax:**
~~~~
\P [n]
~~~~



Show or set display precision for floating-point numbers, i.e. the number of digits shown.

The default value is 7 and possible values are in the range [0,17]. A value of 0 means use maximum
precision. This is used when exporting to CSV files.


**Example(s):**

~~~~
q)\P 3
q)1%3
0.333
~~~~
