# Tmux installations instructions

https://concise.github.io/how-to-build-tmux-from-source/

## tmux-2.3 version on Ubuntu 14.04
Installed the following packages:
libncurses5-dev (5.9+20140118-1ubuntu1)
libtinfo-dev (5.9+20140118-1ubuntu1)

## On Scientific Linux 6

Prerequisites:
- libevent
- ncurses

### libevent

~~~
./configure --prefix=$(HOME)/lib/pkgs/build/libevent/libevent-2.1.8-stable
make
make install
~~~


### tmux

setup_env.sh
~~~~
export CFLAGS="-I$(HOME)/lib/pkgs/src/libevent-2.1.8-stable/include"
export LDFLAGS="-L$(HOME)/lib/pkgs/build/libevent/libevent-2.1.8-stable/lib"
~~~~

~~~~
make clean
source setup_env.sh
./configure --prefix=$(HOME)/lib/pkgs/build/tmux/tmux-2.3/
make
make install
~~~
