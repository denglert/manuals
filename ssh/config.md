## .ssh/config

Config for tunneling

~~~~
Host hostalias
    Hostname hostname
    ProxyCommand ssh user@gateway_host -W %h:%p
    User username
    IdentityFile ~/.ssh/id_rsa_custom
~~~~

