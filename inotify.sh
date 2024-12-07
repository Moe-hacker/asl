#!/bin/sh
MODULEID="moduleid"
MODULEDIR="/data/adb/modules/$MODULEID"
DESCRIPTION="Android Subsystem for GNU/Linux Powered by ruri"

if command -v magisk 2>&1 >/dev/null; then
    if magisk -v | grep -q lite; then
        MODULEDIR="/data/adb/lite_modules/$MODULEID"
    fi
fi

until [ $(getprop sys.boot_completed) -eq 1 ]; do
    sleep 2
done

[ ! -f "$MODULEDIR"/disable ] && "$MODULEDIR"/start.sh
sed -i "6cdescription=$DESCRIPTION" "$MODULEDIR"/module.prop

(
    inotifyd - "$MODULEDIR" 2>/dev/null |
        while read events dir file; do
            # echo "$events $dir $file" >> debug.log
            if [ "$file" = "disable" ]; then
                NOW=$(TZ='Asia/Shanghai' date +"%m-%d %H:%M:%S %Z")
                case "$events" in
                d)
                    "$MODULEDIR"/start.sh
                    sed -i "6cdescription=[ on : $NOW ] $DESCRIPTION" "$MODULEDIR"/module.prop
                    ;;
                n)
                    "$MODULEDIR"/stop.sh
                    sed -i "6cdescription=[ off : $NOW ] $DESCRIPTION" "$MODULEDIR"/module.prop
                    ;;
                *)
                    :
                    ;;
                esac
            fi
        done
) &

pid=$!
sed -i "s/^pid=\".*\"$/pid=\"$pid\"/" "$MODULEDIR/service.sh"

# If issues arise after installation, please uncomment. After restarting the system, enable/disable the module, and then check the "debug.log" output file in the current directory to determine whether the monitoring script is functioning properly
# After checking, please delete or comment out line 22, as no log cleanup operation has been added.
