# Jupyter server management

**References:**
- http://jupyter-notebook.readthedocs.io/en/stable/index.html
- http://jupyter-notebook.readthedocs.io/en/stable/public_server.html


## List running notebooks


~~~~
jupyter notebook list
~~~~

## Config file

### Template config file

You can fenerate a template config file:

~~~~
jupyter notebook --generate-config
~~~~

This will be placed at `~/.jupyter/jupyter_notebook_config.py`.


### Start a notebook server using a specific config file

Use a specific config file:

~~~~
jupyter notebook --config='path/to/config/file.py'
~~~~

### Password setup

#### Automatic password setup

Refer to:
- http://jupyter-notebook.readthedocs.io/en/stable/public_server.html#automatic-password-setup


#### Manually preparing a hashed password

- http://jupyter-notebook.readthedocs.io/en/stable/public_server.html#preparing-a-hashed-password

~~~~
In [1]: from notebook.auth import passwd
In [2]: passwd()
Enter password:
Verify password:
Out[2]: 'sha1:67c9e60bb8b6:9ffede0825894254b2e042ea597d771089e11aed'
~~~~


You can then add the hashed password to your `jupyter_notebook_config.py`.
The default location for this file `jupyter_notebook_config.py` is in your
Jupyter folder in your home directory, `~/.jupyter`, e.g.:

~~~~
c.NotebookApp.password = u'sha1:67c9e60bb8b6:9ffede0825894254b2e042ea597d771089e11aed'
~~~~


## Port forwarding

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
