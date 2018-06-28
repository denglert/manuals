# Checkout


## An entire repo

**Check out a commit by a specific date:**

~~~~
git checkout 'master@{1979-02-26 18:30:00}'
~~~~

**Check out a commit made some time ago:**

~~~~
git checkout master@{1 month 2 weeks 3 days 1 hour 1 second ago}
~~~~


## Specific files


## Undo to last commit, getting rid of all changes since the last commit

~~~~
git checkout -- </path/to/file>
~~~~

### Check out a specific from from a different branch

~~~~
git checkout <branch-name> -- </path/to/file>
~~~~

Example:


~~~~
git checkout remotes/upstream/dev -- ./scripts/test.py
~~~~


### Restore file from old commit in git

~~~~
git checkout 'master@{7 days ago}' -- path/to/file.txt
~~~~

### Check out a single file from git repository

~~~~
wget <github.url>
~~~~


## Reverting changes

Going back to `master` branch:

~~~~
git checkout master
~~~~
