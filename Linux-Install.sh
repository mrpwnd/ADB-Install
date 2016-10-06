#!/bin/bash


echo "ADB and Fastboot will now be installed in your computer."
echo "This scrypt requires root permission. Please type your password"
sudo cd ~ #Gives Superuser permissions
cd "`dirname "$0"`" #CDs to script directory
echo "Installing JDK (Not really necessary, but helpful for future use)."
sudo add-apt-repository ppa:sun-java-community-team/sun-java6; sudo apt-get update; sudo apt-get install sun-java6-jre sun-java6-bin sun-java6-jdk
echo "JDK successfully Installed"
echo "Changed directory to `pwd`" #Informs user of path change
echo "Moving ADB"
sudo mv Linux/adb /usr/bin/adb #Moves adb
echo "ADB Moved to /usr/bin/adb"
echo "Moving Fastboot"
sudo mv Linux/fastboot /usr/bin/fastboot #Moves Fastboot
echo "Fastboot has been moved to /usr/bin/fastboot"
echo "Installing rules"
sudo mv Linux/51-android.rules /etc/udev/rules.d/51-android.rules #Installs rules
echo "Rules successfully installed"
echo "You may now run Android Debug Bridge and Fastboot commands"
echo "Have a nice day, and don't brick your phone."
