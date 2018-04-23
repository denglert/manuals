# Dropbox issues

## Dropbox tray icon doesn't show options after clicking on it

**Solution:**

~~~~
dropbox stop && dbus-launch dropbox start
~~~~
