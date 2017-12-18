# Regex examples

##

~~~~
[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+
~~~~


Get IP addresses:

~~~~
ifconfig | sed -n 's/.*\(inet\ \)\([0-2]*[0-9]*\.[0-2]*[0-9]*\.[0-2]*[0-9]*\.[0-2]*[0-9]* \).*/\2/p'
~~~~
