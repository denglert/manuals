# Troubleshooting


## jupyterq kernel does not start.

### Symptom

After `pyq` uninstall

~~~~
[I 19:19:09.688 NotebookApp] Kernel started: 5c8eeec1-785c-4ef8-9470-85a748f9908f
'2019.01.17T19:19:10.378 p.k. OS reports: No such file or directory
'2019.01.17T19:19:10.378 cleanz
~~~~

or with `pyq` installed

~~~~
[I 19:19:35.642 NotebookApp] Kernel started: 4f11f0a6-bca3-4670-8654-b028e77319be
'2019.01.17T19:19:36.496 .p.eval
  [4]  /Users/user/lib/build/anaconda/envs/q/q/jupyterq_pyzmq.q:2: pypop:.p.eval["list.pop"][;0]
~~~~

### Solution

**Reference:**
- https://github.com/KxSystems/pyq/issues/97

The install order of `pyq` and `embedpy` matters, as one overwrites others `p.k`.

~~~~
conda uninstall pyq embedpy jupyterq kdb
conda install -c kx -c enlnt pyq
conda install -c kx jupyterq
jupyter notebook
~~~~
