#!/bin/bash

~/Library/Android/sdk/platform-tools/adb shell "mkdir -p '/sdcard/Backup/$2'"
~/Library/Android/sdk/platform-tools/adb shell "run-as $1 cat '/data/data/$1/$2/$3' > '/sdcard/Backup/$2/$3'"
~/Library/Android/sdk/platform-tools/adb pull "/sdcard/Backup/$2/$3"
~/Library/Android/sdk/platform-tools/adb shell "rm -r /sdcard/Backup/$2"
