# Workspace factory


**Purpose:**
simplified, automatic declaration and definition of statistcal objects

## Example:

Instead of

~~~~
RooRealVar x(“x”,”x”,-10,10);
RooRealVar mean(“mean”,”mean”,5);
RooRealVar sigma(“sigma”,”sigma”,3);
RooGaussian f(“f”,”f”,x,mean,sigma);
~~~~
we write

~~~~
w.factory(“Gaussian::f(x[-10,10],mean[5],sigma[3])”) ;
~~~~


## Syntax

### Variables


~~~~
x[-10,10]   // Create variable with given range
x[5,-10,10] // Create variable with initial value and range
x[5]        // Create initially constant variable
~~~~

### Functions or PDF objects

Syntax: 

~~~~
ClassName::Objectname(arg1,[arg2],...)
~~~~

Note:
- Leading ‘Roo’ in class name can be omitted
- Arguments are names of objects that already exist in the workspace
- Named objects must be of correct type, if not factory issues error
- Set and List arguments can be constructed with brackets {}


### Nesting

Each creation expression returns the name of the object created.
This allows to create input arguments to functions ‘in place’ rather than in advance

~~~~
Gaussian::g(x[-10,10],mean[-10,10],sigma[3])
~~~~
