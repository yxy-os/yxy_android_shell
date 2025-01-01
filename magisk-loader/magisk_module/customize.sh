#!/system/bin/sh
mkdir -p /data/local/tmp/aria2/
touch /data/local/tmp/aria2/aria2.session
set_perm_recursive $MODPATH 0 0 0755 0755