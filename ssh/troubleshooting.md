# Troubleshooting `ssh`

## Received disconnect from <host>: Too many authentication failures for <user>

**References:**
- https://stuff-things.net/2016/07/06/ssh-too-many-authentication-failures/


### Symptom

~~~~
Received disconnect from <host>: Too many authentication failures for <user>
~~~~

### Solution

~~~~
ssh -o IdentitiesOnly=yes -i ~/.ssh/example_rsa foo.example.com
~~~~
