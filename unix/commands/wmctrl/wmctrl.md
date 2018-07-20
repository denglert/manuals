# wmctrl manuals

## Basic

### Actions

List windows managerd by the window manager:

~~~~
wmctrl -l 
~~~~

Activate the window by switching to its desktop and raising it.

~~~~
wmctrl -a <WIN>
~~~~

### Options

-`i`: Interpret `<WIN>` as a numerical window ID.

## Scripts

### Key-binding to switch between terminals

~~~~
gnome-terminal

echo $(wmctrl -l | grep "Terminal")

win1=$(wmctrl -l | grep "Terminal" | awk '{if(NR==1)print $1}')
win2=$(wmctrl -l | grep "Terminal" | awk '{if(NR==2)print $1}')

echo "Window1: $win1"
echo "Window2: $win2"

sed -i "68s/.*/\"wmctrl -i -a $win1\"/" .xbindkeysrc
sed -i "71s/.*/\"wmctrl -i -a $win2\"/" .xbindkeysrc

killall -9 xbindkeys
xbindkeys
~~~~

In `.xbindkeysrc` line 68-72 are:

~~~~
"wmctrl -i -a 0x0460000a" 
    Alt + 1 

"wmctrl -i -a 0x04600051"
    Alt + 2 
~~~~
