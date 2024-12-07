#!/bin/sh
MODDIR=${0%/*}
pid=""

while [ $(getprop sys.boot_completed) != 1 ]; do
  sleep 3
done

if [ -z "$pid" ] || ! kill -0 "$pid" 2>/dev/null; then
    "$MODDIR"/start.sh
else
    sed -i 's/^pid=".*"/pid=""/' "$(realpath "$0")"
fi
