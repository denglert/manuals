# `git stash`


**References:**
- https://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning


## What stashing does

**Stashing:**
Record the current state of the working directory, specifically all the
- modified tracked files
- staged changes
- the index

The command saves your local modifications away and reverts the working directory to match the
`HEAD` commit.



## Commands

### Creating stashes


Simple stash. Note that this does not save the untracked files!

~~~~
git stash
~~~~

Also include the untracked files in the stash:

~~~~
git stash -u
~~~~

Prompt an interactive stash, deciding one-by-one which changes to stash:

~~~~
git stash --patch
~~~~

### Listing stashes

List stashes (=stash stack):

~~~~
git stash list
~~~~

### Applying stashes

Reapply previously stashed changes, and drop it from your stack:

~~~~
git stash pop
~~~~

Reapply the changes to your working copy and keep them in your stash:

~~~~
git stash apply
~~~~


Apply the stash and also restage that was staged in the stash (`--index` flag):

~~~~
git stash apply --index
~~~~

