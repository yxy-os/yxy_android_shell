#!/system/bin/bash

until [ `getprop sys.boot_completed` -eq 1 ]; do
	sleep 1
done

if [ -f /system/etc/aria2/aria2.conf ]; then
    aria2c --conf-path=/system/etc/aria2/aria2.conf -D
fi
if [ -d /system/etc/lighttpd/www ]; then
    lighttpd -f /system/etc/lighttpd/lighttpd.conf
fi