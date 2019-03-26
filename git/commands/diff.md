# diff

HEAD = latest commit for the current branch,
@ = alias for head


## Diff

### Entrie repo

**Diff between the working copy and the staging area:**

~~~~ 
git diff
~~~~ 

**Diff between the working copy and the HEAD:**

~~~~ 
git diff HEAD
~~~~ 

**Diff between HEAD and the previous commit before that:**

~~~~
git diff HEAD HEAD^
git show
~~~~

**Diff between two commits specified by their hashes:**

~~~~
git diff <commit1> <commit2>
~~~~

**Diff of the stage area the latest commit:**

~~~~
git diff --staged
~~~~


### Specific file

Diff between file versions of different branches:


~~~~
git diff <branch1> <branch2> -- </path/to/file>
~~~~


Note: the `--` separator before the file name indicates the end of command line flags.

## Diff tool

**References:**
- https://medium.com/usevim/git-and-vimdiff-a762d72ced86


### Settings

git config --global diff.tool vimdiff
git config --global merge.tool vimdiff


### Launch

**Launch visual diff tool:**

~~~~
git difftool <commit1> <commit2>
~~~~
