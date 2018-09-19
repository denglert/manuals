# Display options


**References:**
- https://www.xanh.co.uk/control-device-display-with-wm/
- https://www.youtube.com/watch?v=rcZM4bancR8

`wm`  window manager:

~~~~
adb shell wm [subcommand] [option]
~~~~

Subcommands:
- `size`: screen resolution
- `density`: screen dpi
- `overscan`: screen margin

Examples:

~~~~
adb shell wm overscan 0,0,0,30
~~~~
