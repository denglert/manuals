# Tags

Reference:
https://git-scm.com/book/en/v2/Git-Basics-Tagging

There are two types of tags:
- lightweight
- annotated

Note:
- By default, the git push command doesn’t transfer tags to remote servers. You will have to
explicitly push tags to a shared server after you have created them.

## List available tags

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


## Creating tags

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

## Checkout a specific tag

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

## Sharing tags

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

