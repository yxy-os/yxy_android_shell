#!/system/bin/sh
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
set_perm_recursive $MODPATH 0 0 0755 0755