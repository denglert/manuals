# Connecting to an ssh server with ssh keys

**References:**
- https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys
- http://unix.stackexchange.com/questions/36540/why-am-i-still-getting-a-password-prompt-with-ssh-with-public-key-authentication


## Instructions

1. Generate public- and private-key pairs 
    ~~~~
    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    ~~~~
    See the [ssh-keygen manuals](./ssh-keygen.md) for more details.
2. Append the public key (.pub) to the `authorized_keys` file of the server (`./ssh/authorized_keys`)
3. Set up correct permissions for the `authorized_keys` file
    ~~~~
    chmod 700 ~/.ssh/authorized_keys
    ~~~~
4. Add the ssh private key to the `ssh-agent`:
    ~~~~
	ssh-add ~/.ssh/id_rsa_custom
    ~~~~

