#!/bin/bash

adb shell "mkdir -p '/sdcard/Backup/$2'"
adb shell "run-as $1 cat '/data/data/$1/$2/$3' > '/sdcard/Backup/$2/$3'"
adb pull "/sdcard/Backup/$2/$3"
adb shell "rm -r /sdcard/Backup/$2"
