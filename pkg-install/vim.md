## Red Hat Enterprise Server

Need to remove `./src/auto/config.cache` and enable python2.7 conda environment

- compiled against minianaconda python2.7

~~~~
 vi_cv_path_python=~/lib/build/miniconda/build/pkgs/python-2.7.12-1/bin/python2.7
./configure \
--includedir=~/lib/build/miniconda/build/pkgs/python-2.7.12-1/include/python2.7 \
--with-features=huge --enable-rubyinterp --enable-pythoninterp \
--with-python-config-dir=~/lib/build/miniconda/build/pkgs/python-2.7.12-1/lib/python2.7/config
~~~~

## - Ubuntu 16.04 (NOT TESTED)
- compiled against anaconda python2.7

~~~~
 vi_cv_path_python=~/lib/build/anaconda3/pkgs/python-2.7.12-1/bin/python2.7 \
./configure \
--includedir=~/lib/build/anaconda3/pkgs/python-2.7.12-1/include/python2.7 \
--with-features=huge \
--enable-multibyte \
--enable-rubyinterp \
--enable-pythoninterp \
--with-python-config-dir=~/lib/build/anaconda3/pkgs/python-2.7.12-1/lib/python2.7/config
~~~~

## - Ubuntu 16.04
- compiled against system python2.7
-installed into /usr

~~~~
apt install libncurses5-dev
~~~~

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