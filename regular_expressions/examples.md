# Regex examples

## E-mail Address

~~~~
[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+
~~~~


## IP address

Get IP addresses:

~~~~
ifconfig | sed -n 's/.*\(inet\ \)\([0-2]*[0-9]*\.[0-2]*[0-9]*\.[0-2]*[0-9]*\.[0-2]*[0-9]* \).*/\2/p'
~~~~



## Signed floating point number

- https://stackoverflow.com/questions/15814592/how-do-i-include-negative-decimal-numbers-in-this-regular-expression
- https://stackoverflow.com/questions/4703390/how-to-extract-a-floating-number-from-a-string

~~~~
[-+]?\d*\.\d+|[-+]\d+
~~~~
