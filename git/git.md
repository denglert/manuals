# Collection of git commands

## Basic 

**Initializing a directory:**

~~~~
git init
~~~~

**Checking status:**

~~~~
git status
~~~~

**Check log:**

~~~~
git log
~~~~

## Configuration

**Make git colourful:**

~~~~
git config --global color.ui auto
~~~~

## Stage

**Add a file to the staging area:**

~~~~
git add octocat.txt
git add '*.txt'
~~~~

**Physically delete a file and remove it from the staging area:**

~~~~
git rm <file>
~~~~

**Unstaging files:**

~~~~
git reset octodog.txt
~~~~

## Commit

**Commit (storing the staged changes):**
~~~~
git commit -m "Add cute octocat story"
~~~~

## Repositiories

**Add remote repository named 'origin':**

~~~~
git remote add origin https://github.com/try-git/try_git.git
~~~~

**Add upstream remote:**

git remote add upstream  <THEIR_REMOTE_URL> 

## Push/pull

**push command = where to put the commits:**

~~~~
git push <remote name> <branch name>
~~~~

**Pull new changes:**

~~~~
git pull <remotea name> <branch name>
~~~~

## Fetch

**Fetch updates and branches from the upstream fork:**

~~~~
git fetch upstream
~~~~

## diff

HEAD = latest commit for the current branch,
@ = alias for head

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

**Launch visual diff tool:**

~~~~
git difftool <commit1> <commit2>
~~~~

## Checkout

**Undo to last commit, getting rid of all changes since the last commit for octocat.txt:**

~~~~
git checkout -- octocat.txt
~~~~

**Restore file from old commit in git**

~~~~
git checkout 'master@{7 days ago}' -- path/to/file.txt
~~~~

**Check out a single file from git repository:**

~~~~
wget <github.url>
~~~~

## Branches

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

**Delete a branch:**

~~~~
git branch -d <branch-to-be-deleted>
~~~~

## Merging

**Merge a branch:**

~~~~
git merge <branch>
~~~~

**Merge upstream master into the local branch:**

~~~~
git merge upstream/master
~~~~

## Tags

**List tags:**

~~~~
git tag
~~~~

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

## Etc
