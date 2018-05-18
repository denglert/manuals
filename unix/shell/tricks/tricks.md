# Shell tricks


## Delete all broken symlinks

- https://stackoverflow.com/questions/22097130/delete-all-broken-symbolic-links-with-a-line

~~~~
find . -type l -exec sh -c 'for x; do [ -e "$x" ] || rm "$x"; done' _ {} +
~~~~
