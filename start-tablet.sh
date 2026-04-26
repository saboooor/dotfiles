#!/bin/bash

adb wait-for-device

adb shell svc usb setFunctions rndis

# wait for network + sunshine to be ready
sleep 5

adb shell input keyevent KEYCODE_WAKEUP

adb shell am start -n com.limelight/com.limelight.ShortcutTrampoline \
  --es "UUID" "233117DE-7730-6606-BD02-314337C33AF6" \
  --es "Name" "sab-cachy" \
  --es "AppId" "881448767"
