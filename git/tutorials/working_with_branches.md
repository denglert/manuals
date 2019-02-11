# Working with branches in `git`


**Main references**
- https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging

## Branches


### Info

**List all branches (including remote ones):**

~~~~
git branch -a
~~~~

Note: The branches which are not available locally are displayed in red (if you have colour coding
enabled).

**Show only remote branches:**

~~~~
git branch -r
~~~~


### Fetching and pulling branches


#### Fetch

Fetch branches and/or tags (collectively, "refs") from one or more other repositories, along with
the objects necessary to complete their histories


Fetch from `<remote-repo>`:

~~~~
git fetch <remote-repo>
~~~~

Fetch all remotes:

~~~~
git fetch -all
~~~~


Update local branches which track remote branches

~~~~
git pull --all
~~~~


### Creating a branch, and switching to it

**Create a new branch (branching out) with:**

~~~~
git branch <branch-name>
~~~~

**Switch to a new branch:**

~~~~
git checkout <branch-name>
~~~~

**Create a new branch and switch to it in one go:**

~~~~
git checkout -b <branch-name>
~~~~


### Deleting a branch

**Delete a branch:**

~~~~
git branch -d <branch-to-be-deleted>
~~~~


--------------------------------------------------------------------------------------

## Merging


**Merge a branch:**

~~~~
git merge <branch>
~~~~


**Merge upstream master into the local branch:**

~~~~
git merge upstream/master
~~~~


**To stop the merge process where you've encounter conflicts:**

~~~~
git merge --abort
~~~~


**Keep their (e.g. remote) version of a file during merge:**

~~~~
git checkout --theirs /path/to/file
~~~~


**Keep our version of a file during merge:**

~~~~
git checkout --ours /path/to/file
~~~~


### Merge tool

**References:**
- http://www.rosipov.com/blog/use-vimdiff-as-git-mergetool/



#### Settings


~~~~
git config merge.tool vimdiff
~~~~


--------------------------------------------------------------------------------------

## Rebasing


**References:**
- https://www.atlassian.com/git/tutorials/merging-vs-rebasing


--------------------------------------------------------------------------------------

## Syncing a fork

**Fetch the branches and their respective commits from the upstream repository.**
Commits to master will be stored in a local branch, upstream/master

~~~~
git fetch upstream
~~~~

**Check out the fork's local master branch.**

~~~~
git fetch upstream
~~~~

**Merge the changes from upstream/master into your local master branch.**
This brings your fork's master branch into sync with the upstream repository, without losing your
local changes.

~~~~
git merge upstream/master
~~~~

