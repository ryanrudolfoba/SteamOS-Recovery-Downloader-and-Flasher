# SteamOS Recovery Downloader and Flasher

A shell script to easily download and flash the latest SteamOS recovery image to a USB device! \
This is all done using the Steam Deck itself - no need for extra PC to create the SteamOS recovery image.

No binaries are provided in this repository. The latest SteamOS Recovery Image is downloaded directly from Valve website.

> **NOTE**\
> If you are going to use this script for a video tutorial, PLEASE reference on your video where you got the script! This will make the support process easier!
> And don't forget to give a shoutout to [@10MinuteSteamDeckGamer](https://www.youtube.com/@10MinuteSteamDeckGamer/) / ryanrudolf from the Philippines!
>

<b> If you like my work please show support by subscribing to my [YouTube channel @10MinuteSteamDeckGamer.](https://www.youtube.com/@10MinuteSteamDeckGamer/) </b> <br>
<b> I'm just passionate about Linux, Windows, how stuff works, and playing retro and modern video games on my Steam Deck! </b>
<p align="center">
<a href="https://www.youtube.com/@10MinuteSteamDeckGamer/"> <img src="https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/blob/main/10minute.png"/> </a>
</p>

<b>Monetary donations are also encouraged if you find this project helpful. Your donation inspires me to continue research on the Steam Deck! Clover script, 70Hz mod, SteamOS microSD, Secure Boot, etc.</b>

<b>Scan the QR code or click the image below to visit my donation page.</b>

<p align="center">
<a href="https://www.paypal.com/donate/?business=VSMP49KYGADT4&no_recurring=0&item_name=Your+donation+inspires+me+to+continue+research+on+the+Steam+Deck%21%0AClover+script%2C+70Hz+mod%2C+SteamOS+microSD%2C+Secure+Boot%2C+etc.%0A%0A&currency_code=CAD"> <img src="https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/blob/main/QRCode.png"/> </a>
</p>


## [Video Tutorial - Easily Download and Flash the SteamOS Recovery Image](https://youtu.be/qzyhqxr7ep8?si=jPSsLJTf6GtxCEFz)
[Click the image below for a video tutorial and to see the functionalities of the script!](https://youtu.be/qzyhqxr7ep8?si=jPSsLJTf6GtxCEFz)
</b>
<p align="center">
<a href="https://youtu.be/qzyhqxr7ep8?si=jPSsLJTf6GtxCEFz"> <img src="https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/blob/main/banner.png"/> </a>
</p>

## What's New (as of January 11 2023)
1. initial release

## Prerequisites for SteamOS
1. sudo password should already be set by the end user. If sudo password is not yet set, the script will ask to set it up.

## How to Use
1. Go into Desktop Mode and open a konsole terminal.
2. Plug in a USB flash drive that will be used for the SteamOS recovery image. \
   Enter the command and make sure that only 1 USB device is plugged in and detected -\
   lsblk -d | grep sd \
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/3146029e-2e32-49db-8a6e-c17f175e0666)
   
4. Clone the github repo. \
   cd ~/ \
   git clone https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher.git \
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/21800f3a-17fb-4583-8781-e782beeb3eb6)

6. Execute the script! \
   cd ~/SteamOS-Recovery-Downloader-and-Flasher \
   chmod +x SteamOS-Recovery-Downloader-and-Flasher.sh \
   ./SteamOS-Recovery-Downloader-and-Flasher.sh \
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/6baa9ac7-f0fb-45e6-a695-bce51720268a)
   
8. The script will check if sudo passwword is already set.\
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/8a7db91a-2748-479e-9927-de6d51083ad8)

   a. If the sudo password is already set, enter the current sudo password. The script will continue to run and download the SteamOS Recovery Image. \
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/9161afb4-adbd-4aab-8ffb-13bfc2326935)

   b. If wrong sudo password is provided the script will show an error message. Re-run the script and enter the correct sudo password!\
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/bcede292-7212-487a-9414-549d6df88b88)
         
   c. If the sudo password is blank / not yet set, the script will prompt to setup the sudo password. Re-run the script again to continue.\
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/05278d8a-52d3-463c-ac9d-44e44b5045be)

9. Script will download the latest SteamOS Recovery image from Valve website. \
   This will take several minutes depending on the speed of the internet connection. \
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/8a55d505-1750-4b6b-9786-feb4a18c0c9a)

10. Script will perform a hash check to make sure that download is not corrupted and then flash the image to the USB device. \
   This will take several minutes depending on the speed of the USB device. \
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/f4a8715b-5e64-4fba-9b09-4d8c7a865526)

11. Complete! Power off your Steam Deck, then press VOLDOWN + POWER and select the USB device. \
![image](https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher/assets/98122529/e4b733ce-23b6-4925-926b-9a969234a6ac)
