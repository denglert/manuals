# Mounting external drives on a Raspberry Pi

**References:**
- https://raspberrypi.stackexchange.com/questions/33625/raspberry-pi-and-read-write-on-ntfs-with-raspbian-5-5-2015
- https://www.raspberrypi.org/forums/viewtopic.php?t=173613
- https://www.raspberrypi.org/forums/viewtopic.php?t=172154

For NTFS write support:

~~~~
sudo apt-get update
sudo apt-get -y install ntfs-3g
~~~~


Check the location of the disk partition:

~~~~
sudo blkid
~~~~
