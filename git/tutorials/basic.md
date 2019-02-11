# Basic commands in `git`

**Initializing a directory:**

~~~~
git init
~~~~

**Checking status:**

~~~~
git status
~~~~


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

**Commit (storing the staged changes):**

~~~~
git commit -m "Add cute octocat story"
~~~~

**Amend a commit:**

~~~~
git commit --amend
~~~~
