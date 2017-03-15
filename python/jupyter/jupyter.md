# List of useful jupyter commands

## Basic commands

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


## ipywidgets

Create a float slider:

~~~~
ipywidgets.interact( plot, S=ipywidgets.FloatSlider(min=-0.1,max=0.05,step=0.05,value=-0.1) )
~~~~
