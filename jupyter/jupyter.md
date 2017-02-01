# List of useful jupyter commands


Display available line magic commands:

~~~~
%lsmagic
~~~~


Interactive matplotlib figures

~~~~
%matplotlib inline
~~~~

## ipywidgets

Create a float slider:

~~~~
ipywidgets.interact( plot, S=ipywidgets.FloatSlider(min=-0.1,max=0.05,step=0.05,value=-0.1) )
~~~~
