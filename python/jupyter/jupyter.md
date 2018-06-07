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


From the notebook itselall_limitsf:

~~~~
%%bash -s "$output_dir"
jupyter nbconvert --to html notebook.ipynb
mv -f notebook.html $1/
~~~~

To get the notebook name, see github issue:
- https://github.com/jupyter/notebook/issues/1000

Implemented in toolbox:
https://github.com/denglert/toolbox/commit/2558b1624d75cc63e93607e8bc98fd866ef711dc#diff-6dd63496152b41d4913b524995cba093

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
