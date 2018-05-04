# `warnings` module manual


**All references:**
- https://docs.python.org/3.6/library/warnings.html
- https://stackoverflow.com/questions/16236644/userwarning-converting-a-masked-element-to-nan

Ignore all warnings:

~~~~
warnings.filterwarnings('ignore')
~~~~


~~~~
warnings.simplefilter('error', UserWarning)
~~~~
