#!/system/bin/bash

until [ `getprop sys.boot_completed` -eq 1 ]; do
	sleep 1
done

aria2c --conf-path=/system/etc/aria2/aria2.conf -D
lighttpd -f /system/etc/lighttpd/lighttpd.conf