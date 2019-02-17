# paths in bash

**References:**
- https://askubuntu.com/questions/893911/when-writing-a-bash-script-how-do-i-get-the-absolute-path-of-the-location-of-th


**Relevant commands:**
- `dirname`
- `realpath`
- `readlink`
- `pwd`



## Get the directory of the script from within the script

~~~~
BASEDIR=$(dirname $(realpath "$BASH_SOURCE"))
echo ${BASEDIR}
~~~~
