# ssh tips

References:
- https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
- https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys
- http://unix.stackexchange.com/questions/36540/why-am-i-still-getting-a-password-prompt-with-ssh-with-public-key-authentication


## Options

- `-i <identity_file>`
        Selects a file from which the identity (private key) for public key authentication is read.

- `-X`: Enables X11 forwarding.
- `-L`: Specifies that connections to the given TCP port or Unix socket on the local (client) host
        are to be forwarded to the given host and port, or Unix socket, on the remote side.

    Syntax:

    - `-L [bind_address:]port:host:hostport`
    - `-L [bind_address:]port:remote_socket`
    - `-L local_socket:host:hostport`
    - `-L local_socket:remote_socket`

- `-o option`: Can be used to give options in the format used in the configuration file.  This is
               useful for specifying options for which there is no separate command-line flag.

    Example:
    - `-o 'PubkeyAuthentication no'`
