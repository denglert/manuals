## Log

More detailed docs:
http://schacon.github.io/git/git-log.html

**Checking log:**

~~~~
git log
~~~~

## Format

### Commit checksum

~~~~
git log -1 --format=%H
~~~~

#### Commit checksum and time stamp

~~~~
git log -1 --format=%H\ -\ %cd
~~~~
