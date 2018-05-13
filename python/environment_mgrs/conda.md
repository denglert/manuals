**Get help for conda commands**

~~~~
conda --help
~~~~

**Get list of packages (similar to pip)**

~~~~
conda list
~~~~

## Package management

**List all packages installed into environment 'myenv':

~~~~
conda list -n myenv
~~~~

**Export package list**

~~~~
conda list --export > requirements.txt
~~~~

**Reinstall packages from an export file:**
       
~~~~
conda create -n myenv --file package-list.txt
~~~~

## Environment management

**Create a new environment**

~~~~
conda create --name <env-name> <pkg1> <pkg2> <...>
~~~~

e.g: Create a new environment with python 2.7:

~~~~
conda create --name py27 python=2.7
~~~~

**Activate new environment**

~~~~
source activate <env-name>
~~~~

**Deactivate new environment**

~~~~
source deactivate
~~~~

**List of environments**

~~~~
conda env list
~~~~

**Delete environment**
~~~~
conda remove --name <env-name> --all
~~~~

**Environments can be found here**

~~~~
anacondalib/envs/
~~~~
