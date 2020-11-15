#!/bin/sh
# shell script to prepend i3status with more stuff

# Authors:
# - Moritz Warning <moritzwarning@web.de> (2016)
# - Zhong Jianxin <azuwis@gmail.com> (2014)
#
# See file LICENSE at the project root directory for license information.
#
# i3status.conf should contain:
# general {
#   output_format = i3bar
# }
#
# i3 config looks like this:
# bar {
#   status_command exec /usr/share/doc/i3status/contrib/net-speed.sh
# }
#
# Single interface:
# ifaces="eth0"
#
# Multiple interfaces:
# ifaces="eth0 wlan0"
#

# Auto detect interfaces
ifaces=$(ls /sys/class/net | grep -E '^(eno|enp|ens|enx|eth|wlan|wlp)')
rate=""
weather=""

update_rate() {
  rate=`curl 'https://api.ipify.org'`
  weather=`curl wttr.in/Sinorovo?format="+\[%t\]\n"`
}

i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && update_rate && while :
do
  read line
  update_rate
  echo ",[{\"full_text\":\"${weather} ${rate}\" },${line#,\[}" || exit 1
done)
