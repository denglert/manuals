# Installing vim 


## Automatic (Package manager)

### Ubuntu

~~~~
apt install vim
~~~~

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------

## Manual


### Red Hat Enterprise Server

Need to remove `./src/auto/config.cache` and enable python2.7 conda environment

- compiled against minianaconda python2.7

~~~~
 vi_cv_path_python=~/lib/build/miniconda/build/pkgs/python-2.7.12-1/bin/python2.7
./configure \
--includedir=~/lib/build/miniconda/build/pkgs/python-2.7.12-1/include/python2.7 \
--with-features=huge --enable-rubyinterp --enable-pythoninterp \
--with-python-config-dir=~/lib/build/miniconda/build/pkgs/python-2.7.12-1/lib/python2.7/config
~~~~


### Ubuntu

#### `python` issues

- https://vi.stackexchange.com/questions/10242/vim-8-0-python-support


#### - Ubuntu 16.04 

- compiled against system python, either 2.7 or 3.5
- installed into /usr


**Prerequisities:**

~~~~
apt install libncurses5-dev
~~~~

**Compile with python 2.7:**

~~~~
./configure \
--with-features=huge \
--enable-multibyte \
--enable-rubyinterp \
--with-python-config-dir=/usr/lib/python2.7/config \
--enable-pythoninterp \
--enable-perlinterp=yes \
--enable-luainterp=yes \ --enable-cscope \
--prefix=/usr
~~~~


**Compile with python 3.5:**

~~~~
export CFLAGS=-fPIC
./configure --with-tlib=ncurses \
            --with-features=huge \
            --enable-multibyte \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-rubyinterp \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/
~~~~

**Then proceed as:**

~~~~
make
~~~~

~~~~
make install
~~~~

or if you require su priviliges:

~~~~
sudo make install 
~~~~

------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------


## Troubleshooting

### `libncurses` not found

Having both `anaconda` and system libraries can cause this.

The solution in my case was to install `vim` from a clean terminal, i.e. from a terminal which did
not have any environment variables (e.g. `PATH`) were modified.

**Some possible checks:**

- `echo $PATH`

- Check if `ncurses` library is available.

    ~~~~
    ldconfig -p | grep ncurses
    ~~~~

- Which gcc is used:
    ~~~~
    which gcc
    ~~~~
