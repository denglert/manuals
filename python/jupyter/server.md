# Jupyter server management

List running notebooks:

~~~~
jupyter notebook list
~~~~


Find out the PID of the process running on port `<port-number>`:

~~~~
fuser <port-number>/tcp
~~~~

Attempt to kill the process:

~~~~
kill -9 <PID>
~~~~

Attempt to kill the process running on port `<port-number>`, via `fuser`:

~~~~
fuser -k <port-number>/tcp
~~~~

List all active connections:

~~~~
netstat -tulpn
~~~~

Add a jupyter kernel by hand:

~~~~
python -m ipykernel install --user --name environment_name --display-name "Python (environment_name)"
~~~~
