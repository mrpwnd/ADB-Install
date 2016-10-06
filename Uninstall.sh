#!/bin/bash
echo "Getting everything ready to uninstall ADB and Fastboot"
echo "Need access to protected directories, please type your password."
sudo rm /usr/bin/adb #Removes adb
echo "ADB successfully uninstalled"
sudo rm /usr/bin/fastboot #Removes fastboot
echo "Fastboot successfully uninstalled"
echo "Removing successfully rules"
sudo rm /etc/udev/rules.d/51-android.rules #Removes rules
echo "For mac users if you experience an error it's OK."
echo "Rules successfully uninstalled"
echo "ADB and Fastboot have been successfully uninstalled."
echo "Have a nice day!"
