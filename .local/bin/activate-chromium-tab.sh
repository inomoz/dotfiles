#!/bin/bash                                                                                                              

wmctrl -a Chromium                                                                                                             
if [ $1 = "1" ]; then
xdotool search --onlyvisible --class Chromium key Alt+1
else
xdotool search --onlyvisible --class Chromium key Alt+2
fi
