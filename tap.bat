@echo off

:menu
set /p w=1.Wireless - 2.UNLOCK
IF %W%==1 GOTO WIRELESS
IF %W%==2 GOTO UNLOCK

:WIRELESS
adb kill-server
adb connect to 10.0.0.192

:UNLOCK
adb devices
adb shell input keyevent 26
adb shell sleep 1
adb shell input keyevent 66
adb shell sleep 2
adb shell input text 2508
adb shell sleep 1
adb shell input tap 880 1550
adb shell sleep 1
adb shell input keyevent 1
adb shell sleep 1
adb shell input text Instagram
adb shell input tap 550 400