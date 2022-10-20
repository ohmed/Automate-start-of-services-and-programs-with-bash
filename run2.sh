#!/bin/bash
sleep 2
sudo echo -e  "\e[1;33m [+] Attempting start service apparmor \e[0m"
sudo service snapd.apparmor start
if [ $? -eq 0 ]; then
	sleep 3
	echo   
	echo -e "\e[1;32m ✔️  SUCCESS \e[0m"
	sleep 2
else
	echo -e "\e[1;31m [+] Failed to start Service \e[0m"
	sleep 2
fi
echo [+] Service has been successfully re-started.
sleep 2
echo [+] 
sleep 2
read -p 'Start Netbeans from Terminal? y/n: ' user
if (( $user == "y" ))
then
	netbeans
elif (( $user == "n" ))
then
	echo -e "\nFailed to start program netbeans from the terminal"
	sleep 2
	echo -e "\nYou can start the program from the Application menu"
	sleep 2
else
	echo -e "\[+]Exiting bash"
fi
