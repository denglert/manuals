# Collection of git commands

**Specific subtopics:**
- [Config](./config.md)
- [Tags](./tags.md)
- [Diff](./diff.md)
- [Working with branches](./working_with_branches.md)
- [Git damage control](./damage_control.md)
- [Submodules](./submodule.md)
- [Log](./log.md)
- [Repositories](./repositories.md)
- [Troubleshooting](./troubleshooting.md)
- [vim](./vim.md)
- [ssh](./ssh.md)
- [Stash](./stash.md)


## Basic 

**Initializing a directory:**

~~~~
git init
~~~~

**Checking status:**

~~~~
git status
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

**Amend a commit:**
~~~~
git commit --amend
~~~~


## Push/pull

**push command = where to put the commits:**

~~~~
git push <remote name> <branch name>
~~~~

**Pull new changes:**

~~~~
git pull <remote-name> <branch name>
~~~~


## Fetch

**Fetch updates and branches from the upstream fork:**

~~~~
git fetch upstream
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
