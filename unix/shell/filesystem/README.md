# Unix filesystem commands


## Permissions

**set properties of the file:**
~~~~
chmod u+x filename
~~~~

## Links

**To create a symbolic link:**
~~~~
ln -s {/path/to/file-name} {link-name}
~~~~

**To create hard link:**

~~~~
ln {file.txt} {hard-link}
~~~~


## Space

**How to check size of a directory and free disk space:**

~~~~
du -h
~~~~

## Movement in directories

**Move up several directories:**
cd ../../..


## Info

**Print full path of a file:**
readlink -f FILENAME
