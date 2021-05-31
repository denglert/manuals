# Datatype promotion


## Examples 

### Numeric to higher order numeric

~~~~
a: 3h;     / - type -5h (short int)
b: -1i;    / - type -6h (int)
c: a + b;  / - type -6h (int)
~~~~

~~~~
c: 5j;     / - type -7h (long int)
d: 1.2f;   / - type -9h (float)
e: c + d;  / - type -9h (float)
~~~~

---------------------------------------------------------------------------------------------------------------

### Boolean type promotion


~~~~
b: 1b;
if[b; show "b is True (1b)"]
"b is True (1b)"
~~~~


~~~~
b: 0b;
if[b; show "b is True (1b)"]
~~~~

~~~~
n: 11;
if[n; show "n = ", (string n), " is casted as a boolean True (1b)"]
"n = 11 is casted as a boolean True (1b)"
~~~~

~~~~
n: -2;
if[n; show "n = ", (string n), " is casted as a boolean True (1b)"]
"n = -2 is casted as a boolean True (1b)"
~~~~


~~~~
n: 0;
if[n; show "n = ", (string n), " is casted as a boolean True (1b)"]
~~~~
