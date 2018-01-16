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

**Checking log:**

~~~~
git log
~~~~

## Log

More detailed docs:
http://schacon.github.io/git/git-log.html

Check the log history of the repo:

~~~~
git log
~~~~

### Get the info about the latest commit in a specific format

#### Commit checksum

~~~~
git log -1 --format=%H
~~~~

#### Commit checksum and time stamp

~~~~
git log -1 --format=%H\ -\ %cd
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

### Entire repo

**Check out a commit by a specific date:**

~~~~
git checkout 'master@{1979-02-26 18:30:00}'
~~~~

**Check out a commit made some time ago:**

~~~~
git checkout master@{1 month 2 weeks 3 days 1 hour 1 second ago}
~~~~

### Specific files

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


### Reverting changes

Going back to `master` branch:

~~~~
git checkout master
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

To stop the merge process where you've encounter conflicts:

~~~~
git merge --abort
~~~~

## Tags

Reference:
https://git-scm.com/book/en/v2/Git-Basics-Tagging

There are two types of tags:
- lightweight
- annotated

Note:
- By default, the git push command doesn’t transfer tags to remote servers. You will have to
explicitly push tags to a shared server after you have created them.

### List available tags

**List tags:**

~~~~
git tag
~~~~

**Filter tag list:**

~~~~
git tag -l "v1.8.5*"
~~~~

**Show a tag:**

~~~~
git show <tag-name>
~~~~


### Creating tags

**Creating a lightweight tag:**

~~~~
git tag <lightweight tag>
~~~~

Example:

~~~~
git tag v1.4-lw
~~~~

**Creating an annotated tag:**

~~~~
git tag -a <annotated tag> -m <tagging message>
~~~~

Example: 

~~~~
git tag -a v1.4 -m "my version 1.4"
~~~~

**Tagging later:**

~~~~
git tag -a <annotated tag> <commit checksum>
~~~~

### Checkout a specific tag

Methods:

a) Create a new branch where the tag is checked out.

~~~~
git checkout tags/<tag_name> -b <branch_name>
~~~~

b) Directly checkout the tag (not recommended)

Warning: This will make the repo into a HEADLESS state!

~~~~
git checkout tags/<tag-name>
~~~~

### Sharing tags

To push tags to a shared server after you have created them:

~~~~
git push origin <tag-name>
~~~~

Example:
~~~~
git push origin v1.5
~~~~

To push all tags to the remote repository:

~~~~
git push origin --tags
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

## Submodules


### Downloading a repository including its submodules

~~~~
git clone --recursive <url>
~~~~

### Add a specific version of a package to your repo

1. Add the submodule to your repo:

~~~~
git submodule add <url>
~~~~

2. Check out the tag/commit that you want to work on

~~~~
cd <pkg>
git checkout <tag>/<commit>
~~~~

3. Add to the staging area and then commit the changes

~~~~
cd ..
git add <pkg> .gitmodules
git commit -m "Added `<pkg>` with tag/commit."
~~~~


### Update a submodule to the version of the latest commit

Source:
https://stackoverflow.com/questions/5828324/update-git-submodule-to-latest-commit-on-origin

~~~~
cd <submodule>
git pull origin master
cd ..
git add <submodule>
git commit -m "Updated <submodule>."
~~~~

# Troubleshooting

## `git: Not currently on any branch` problem

https://stackoverflow.com/questions/4735556/git-not-currently-on-any-branch-is-there-an-easy-way-to-get-back-on-a-branch

If no commit was made (untested):

~~~~
git stash
git checkout some-branch
git stash pop
~~~~

If you've already made a commit on a HEADLESS state, you should check the hash of the commit,
checkout the branch where you'd want to merge that commit to and then proceed with the merge:

~~~~
git log --oneline -n1
git checkout <branch-name>
git merge <commit hash>
~~~~
