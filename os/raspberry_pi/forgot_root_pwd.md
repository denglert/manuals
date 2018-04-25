# In case you forgot the root password

**References:**
- http://mapledyne.com/ideas/2015/8/4/reset-lost-admin-password-for-raspberry-pi

1. Power down and pull the SD card out from your Pi and put it into your computer.
2. Open the file `cmdline.txt` and add `init=/bin/sh` to the end. This will cause the machine to boot to single user mode.
3. Put the SD card back in the Pi and boot.
4. When the prompt comes up, type `su` to log in as root (no password needed).
5. Type `passwd pi` and then follow the prompts to enter a new password.
6. Shut the machine down, then pull the card again and put the cmdline.txt file back the way it was by removing the `init=/bin/sh` bit.


In case you get an error while trying to change the password, try to remount with write permissions:

~~~~
mount -o remount,rw /
~~~~
