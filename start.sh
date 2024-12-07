#!/bin/sh
MODDIR=${0%/*}
export PATH="$MODDIR/bin:$PATH"
"$MODDIR"/stop.sh
sleep 3
. "$MODDIR"/config.conf

if [ "$REQUIRE_SUDO" = "true" ]; then
    mount --bind $CONTAINER_DIR $CONTAINER_DIR
    mount -o remount,suid $CONTAINER_DIR
fi

ARGS="-w"
if [ -n "$MOUNT_POINT" ] && [ -n "$MOUNT_ENTRANCE" ]; then
    if [ "$MOUNT_READ_ONLY" = "true" ]; then
        ARGS="$ARGS -M $MOUNT_POINT $MOUNT_ENTRANCE"
    else
        ARGS="$ARGS -m $MOUNT_POINT $MOUNT_ENTRANCE"
    fi
    # [ ! -d "$ROOTFS/$MOUNT_ENTRANCE" ] && mkdir -p "$ROOTFS/$MOUNT_ENTRANCE"
fi

[ "$UNMASK_DIRS" = "true" ] && ARGS="$ARGS -A"
[ "$PRIVILEGED" = "true" ] && ARGS="$ARGS -p"
[ "$RUNTIME" = "true" ] && ARGS="$ARGS -S"

ruri $ARGS $CONTAINER_DIR /bin/$SHELL -c "$START_SERVICES" &
