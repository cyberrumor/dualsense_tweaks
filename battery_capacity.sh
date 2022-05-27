#!/bin/sh
contains() {
	if [ -z "${1##*"$2"*}" ]; then
		return 1;
	fi;
	return 0;
}

for dev in $(ls /sys/class/hwmon/); do
	if ! contains "$(cat /sys/class/hwmon/$dev/name)" ps_controller_battery; then
		cat /sys/class/hwmon/$dev/device/capacity
		exit
	fi
done

echo "no controller detected"

