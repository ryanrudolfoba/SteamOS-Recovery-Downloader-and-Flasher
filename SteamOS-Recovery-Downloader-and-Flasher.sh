#!/bin/bash
# SteamOS Recovery Downloader and Flasher
# script by ryanrudolf
# https://github.com/ryanrudolfoba
# https://youtube.com/@10minutesteamdeckgamer
#
# script will create the directory - ~/SteamOS-Recovery-Downloader and automatically download the latest SteamOS Recovery Image.
# script will perform a md5 check to make sure that download is not corrupted and finally flash the image to the USB device.
# if there are multiple USB devices, the script will exit immediately. Plug in a single USB device that you want to flash and re-run the script.
#

clear
echo SteamOS Recovery Downloader and Flasher - script by ryanrudolf
echo https://gist.github.com/ryanrudolfoba / https://github.com/ryanrudolfoba
echo https://youtube.com/@10minutesteamdeckgamer
sleep 2

# check sudo password
# check if sudo password is already set
if [ "$(passwd --status $(whoami) | tr -s " " | cut -d " " -f 2)" == "P" ]
then
	read -s -p "Please enter current sudo password: " current_password ; echo
	echo Checking if the sudo password is correct.
	echo -e "$current_password\n" | sudo -S -k ls &> /dev/null

	if [ $? -eq 0 ]
	then
		echo Sudo password is good!
	else
		echo Sudo password is wrong! Re-run the script and make sure to enter the correct sudo password!
		exit
	fi
else
	echo Sudo password is blank! Setup a sudo password first and then re-run script!
	passwd
	exit
fi

# some variables to make our life easier
DIR=/home/deck/SteamOS-Recovery-Downloader
IMG=steamdeck-repair-latest.img.bz2
HASH=f2eea53ed89f36790780fbd43f8a0a02
URL=https://steamdeck-images.steamos.cloud/recovery/steamdeck-repair-latest.img.bz2
USB=$(lsblk -d | grep sd | wc -l)

# check if there are multple USB devices plugged in
if [ $USB -gt 1 ] 
then
	echo Multiple USB devices detected!
	lsblk -d | grep sd
	echo Only connect the USB device that you want to use for SteamOS Recovery Image!
	echo Disconnect other USB devices and run the script again!
	exit

elif [ $USB -lt 1 ]
then
	echo No USB device detected!
	echo Insert a USB device and re-run this script!
	exit
fi

if [ -d "$DIR" ]
then
	echo Directory already exists.
else
	echo Creating directory - "$DIR"
	mkdir "$DIR"
fi

cd "$DIR"
if [ -f "$IMG" ]
then
	echo SteamOS Recovery Image already exists.
	echo Check if md5 hash is good. Please wait.
	md5sum "$IMG" | grep "$HASH" &> /dev/null
	if [ $? -eq 1 ]
	then
		echo Hash mismatch. Possible corrupted downloaded.
		echo Re-run the script again to redownload the SteamOS Recovery Image.
		rm -f "$IMG"
		exit
	else
		echo Hash is good!
	fi
else
	echo SteamOS Recovery Image not found.
	echo Downloading - "$IMG"
	wget "$URL"
	echo Download complete. 
	echo Check if md5 hash is good. Please wait.
	md5sum "$IMG" | grep "$HASH" &> /dev/null
	if [ $? -eq 1 ]
	then
		echo Hash mismatch. Possible corrupted downloaded.
		echo Re-run the script again to redownload the SteamOS Recovery Image.
		rm -f "$IMG"
		exit
	else
		echo Hash is good!
	fi
fi

# unmount the USB device if it is mounted
echo -e "$current_password\n" | sudo -S umount /run/media/deck/* &> /dev/null

# write the image to the USB device
echo Writing the image to the USB device. This will take a few minutes depending on the speed of the USB device.
echo -e "$current_password\n" | sudo -S  bzcat "$IMG" | sudo dd if=/dev/stdin of=/dev/sda oflag=sync status=progress bs=128M && sync
echo All done! SteamOS Recovery Image is now written to the USB device!
echo Power off your Steam Deck, then press VOLDOWN + POWER and select the USB device.
