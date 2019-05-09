# Server config

## Adding a non-default browser to the list of callable browsers

**References:**
- https://support.anaconda.com/customer/en/portal/articles/2925919-change-default-browser-in-jupyter-notebook

~~~~
jupyter notebook --browser=<browsertype>
~~~~

Generate template jupyter config:

~~~~
jupyter notebook --generate-config
~~~~

Then within `~/.jupyter/jupyter_notebook_config.py`, add/modify these lines:

~~~~
import webbrowser
webbrowser.register('vivaldi', None, webbrowser.GenericBrowser('path_to_browser_binary'))
c.NotebookApp.browser = 'vivaldi'
~~~~
