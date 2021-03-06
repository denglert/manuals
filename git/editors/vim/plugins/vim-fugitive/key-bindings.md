# Custom `vim` key bindings

**Bindings:**

~~~~
map <Leader>gs :Gstatus<CR>
map <Leader>gp :Gpush<CR>
map <Leader>gb :Gbrowse<CR>
map <Leader>gd :Gdiff<CR>
map <Leader>gg :Gpull<CR>
map <Leader>gl :Glog<CR>
map <Leader>gw :Gwrite<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gwp :!git add . && git commit -m "Template commit message: Work in progress." && git push<CR>
map <Leader>gcp :!git add . && git commit && git push<CR>
~~~~

**Add all files in folder, commit and push:**

~~~~
<Leader>gcp
~~~~

**Add all files in folder, commit with template message and push:**

~~~~
<Leader>gcp
~~~~

**Open up log of file:**

~~~~
<Leader>gl
~~~~

**Git diff:**

~~~~
<Leader>gd
~~~~

**Pull (git get):**

~~~~
<Leader>gg
~~~~

**Open repo in browser:**

~~~~
<Leader>gb
~~~~
