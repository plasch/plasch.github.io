#!/bin/bash
 
# Clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15

# Set a foreground colour using ANSI escape
tput setaf 3
echo "XYX Corp LTD."
tput sgr0
 
tput cup 5 17
# Set reverse video mode
tput rev
echo "C H A R L E S - P R O X Y"
tput sgr0

tput cup 7 15
IP=$(ipconfig getifaddr en0)
echo "My IP $IP"
 
tput cup 8 15
echo "1. Enable Proxy"
 
tput cup 9 15
echo "2. Disable Proxy"
 
tput cup 10 15
echo "3. Get Proxy Status"

tput cup 11 15
echo "4. Exit"

# Set bold mode
tput bold
tput cup 13 15
read -p "Enter your choice [1-4] " choice
tput sgr0

tput cup 15 15
tput setaf 1


if [[ $choice == 1 ]]; then
	adb shell settings put global http_proxy $IP:8888
	if [ $? -eq 0 ]
	then
		tput setaf 2
  		echo "Proxy is enable"
	else
		tput cup 16 15
  		echo "Proxy isn't enable"
	fi

elif [[ $choice == 2 ]]; then
	adb shell settings put global http_proxy :0
	if [ $? -eq 0 ]
	then
		tput setaf 2
  		echo "Proxy is disable"
	else
		tput cup 16 15
  		echo "Proxy isn't disable"
	fi

elif [[ $choice == 3 ]]; then
	STATUS_PROXY=$(adb shell settings get global http_proxy)
	if [ $? -eq 0 ]
	then
		tput setaf 2
  		echo "Current proxy status $STATUS_PROXY"
	fi

elif [[ $choice == 4 ]]; then
	# tput clear
	tput sgr0
	# tput rc

else
	tput setaf 1
	echo Incorrect choice
	tput sgr0
fi

tput cup 18