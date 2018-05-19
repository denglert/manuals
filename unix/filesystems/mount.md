# `mount`



## NTFS

**References**
- https://raspberrypi.stackexchange.com/questions/33625/raspberry-pi-and-read-write-on-ntfs-with-raspbian-5-5-2015
- https://www.raspberrypi.org/forums/viewtopic.php?t=173613
- https://bugs.launchpad.net/ubuntu/+source/ntfs-3g/+bug/124795

~~~~
sudo apt-get update
sudo apt-get -y install ntfs-3g
~~~~


Mounting the drive:

~~~~
sudo mount -t ntfs-3g -o uid=pi,gid=pi /dev/sda1 /media/drive
~~~~


## Force unmount

- https://www.systutorials.com/239761/force-linux-unmount-filesystem-reporting-device-busy/

~~~~
umount -f /media/drive
~~~~

~~~~
fusermount -uz /media/drive
~~~~
