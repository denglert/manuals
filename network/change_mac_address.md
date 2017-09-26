# How to change the MAC address

## On Mac OSX

**To find the current mac address:**

~~~~
ifconfig en0 | grep ether
~~~~

**To change the mac address:**

~~~~
sudo ifconfig en0 ether aa:bb:cc:dd:ee:ff
~~~~

**How to generate a random mac address:**

~~~~
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'
~~~~

**How to change to a random mac address:**

~~~~
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | xargs sudo ifconfig en0 ether
~~~~
