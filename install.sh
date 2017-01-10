#!/usr/bin/sh
set -e
if [ -z "$1" ]
then
    echo "ERROR: Missing path to opengapps zip"
    exit 1
fi
ZIP="$1"
echo "Waiting for device…"
adb wait-for-device
adb remount
adb shell mkdir /data/upgrade
adb push "$ZIP" /data/upgrade
adb push runner.sh /data/upgrade
unzip -o "$ZIP" unzip-x86
adb push unzip-x86 /system/bin/unzip
adb shell "cd /data/upgrade; sh runner.sh ignored 1 \"$ZIP\""
adb shell sync
