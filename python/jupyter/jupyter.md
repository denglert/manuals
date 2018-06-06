# List of useful jupyter commands


## Magic commands

**Display available line magic commands:**

~~~~
%lsmagic
~~~~


**Interactive matplotlib figures**

~~~~
%matplotlib inline
~~~~

**Reload external module:**

https://ipython.org/ipython-doc/3/config/extensions/autoreload.html

~~~~
%load_ext autoreload
%autoreload 2
import plot_utils.plot_utils as plu
~~~~

~~~~
%autoreload 0
~~~~

    Disable automatic reloading.

~~~~
%autoreload 1
~~~~

    Reload all modules imported with %aimport every time before executing the Python code typed.

~~~~
%autoreload 2
~~~~

    Reload all modules (except those excluded by %aimport) every time before executing the Python
code typed.


## Conversion

### Jupyter notebook (`.ipynb`) -> pure python (`.py`):

~~~~
jupyter nbconvert --to=python <notebook.ipynb>
~~~~

### Jupyter notebook (`.ipynb`) -> `html.`:

~~~~
jupyter nbconvert --to=html <notebook.ipynb>
~~~~


### Pure python file (`.py`) -> jupyter notebook (`.ipynb`)

With the help of [py2nb package](https://github.com/sklam/py2nb):

~~~~
python -m py2nb <python.py> <notebok.ipynb>
~~~~


## Markdown

### Insert an image


~~~~
![alt text](imagename.png "Title")
~~~~

or .html

~~~~
<img src="figures/image.png">
~~~~
