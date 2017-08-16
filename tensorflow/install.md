# Installing tensorflow



## `GLIBC_2.14 not found` error 

While installing `tensorflow` on the QMUL cluster following the instructions on
[here][tensorflow-install] I got the following error message:

~~~~
ImportError: /lib64/libc.so.6: version `GLIBC_2.14' not found (required by
/data/englert/pkgs/build/anaconda/anaconda3/lib/python3.6/site-packages/tensorflow/python/_pywrap_tensorflow_internal.so)
~~~~

Solution found here:

https://stackoverflow.com/questions/33655731/error-while-importing-tensorflow-in-python2-7-in-ubuntu-12-04-glibc-2-17-not-f/33658956#33658956

~~~~
cd ~/my_libc_env
wget http://launchpadlibrarian.net/137699828/libc6_2.17-0ubuntu5_amd64.deb
wget http://launchpadlibrarian.net/137699829/libc6-dev_2.17-0ubuntu5_amd64.deb
wget
ftp://rpmfind.net/linux/sourceforge/m/ma/magicspecs/apt/3.0/x86_64/RPMS.lib/libstdc++-4.8.2-7mgc30.x86_64.rpm
ar p libc6_2.17-0ubuntu5_amd64.deb data.tar.gz | tar zx
ar p libc6-dev_2.17-0ubuntu5_amd64.deb data.tar.gz | tar zx
rpm2cpio libstdc++-4.8.2-7mgc30.x86_64.rpm| cpio -idmv
~~~~

[tensorflow-install]: https://www.tensorflow.org/install/install_linux#InstallingAnaconda
