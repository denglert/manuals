# Network commands

## Gather information

~~~~
ifconfig -a
~~~~

~~~~
lspci -nnk | grep -iA2 net
~~~~

~~~~
cat /etc/network/interfaces
cat /etc/resolv.conf
~~~~

List network hardware components:

~~~~
lshw -c network
~~~~

lsmod

**Use `ethtool` to set options:**

ethtool enp0s25
sudo ethtool -s enp0s25 speed 100 duplex full


**Load in Intel Gigabit Ethernet driver module:**

~~~~
modprobe e1000e
~~~~

**Set the primary and secondary DNS adddress to Google DNS service:**

~~~~
echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" | sudo tee /etc/resolv.conf
~~~~

**Restart network manager:**

~~~~
sudo /etc/init.d/networking restart
sudo service network-manager restart
~~~~
