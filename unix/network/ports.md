# Ports

Find out the PID of the process running on port `<port-number>`:

~~~~
fuser <port-number>/tcp
~~~~

Attempt to kill the process running on port `<port-number>`, via `fuser`:

~~~~
fuser -k <port-number>/tcp
~~~~

List all active connections:

~~~~
netstat -tulpn
~~~~
