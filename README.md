# Android lockscreen password cracker (Bruteforce approach) via ADB 
# Tested only on Asus Zenfone 4 A450CG

A shell script which bruteforces lockscreen login attempts by using ADB Connectivity. 
It can work via Debugging mode connectivity on globally or on same local network or by using  USB cable .

Steps to connect via network mode: (I used Linux based PC)

1.Activate debug mode in android.

2.Connect to pc via usb.
  
3.Open Terminal type: adb tcpip 5555 (or any random port)
  
4.Disconnect your tablet or smartphone from pc.

5.Open command prompt type: adb connect IPADDRESS (IPADDRESS is the DHCP/IP address of your tablet or smartphone, which you can find by Wi-Fi -> current connected network)


Length of password is 4 digit in Asus Zenfone 4 A450CG.

 
