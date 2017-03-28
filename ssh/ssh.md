# ssh tips

https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys
http://unix.stackexchange.com/questions/36540/why-am-i-still-getting-a-password-prompt-with-ssh-with-public-key-authentication

## Generating a new SSH key

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

## Passwordless login with SSH key pairs

- Step 1: Generate public- and private-key pairs 
- Step 2: Place the public key (.pub) in the `authorized_keys`
- Step 3: Set up correct permissions for the files 

## .ssh/config

~~~~
Host hostalias
    Hostname hostname
    ProxyCommand ssh hostB -W %h:%p
    User username
    IdentityFile ~/.ssh/id_rsa_custom
~~~~


## Regenerating keycode
ssh-keygen -p

## Various flags

# Graphics
ssh -X

# Create socket
ssh -L 
