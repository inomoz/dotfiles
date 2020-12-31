#!/usr/bin/env bash

notify="notify-send -u low dunst"

case `dunstctl is-paused` in
    true)
	rm -f /tmp/dnd.lock
        $notify "Notifications are enabled"
        dunstctl set-paused false
        ;;
    false)
	touch /tmp/dnd.lock
        $notify "Notifications are paused"
        # the delay is here because pausing notifications immediately hides
        # the ones present on your desktop; we also run dunstctl close so
        # that the notification doesn't reappear on unpause
        (sleep 3 && dunstctl close && dunstctl set-paused true) &
        ;;
esac

sleep 2
