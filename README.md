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


## [Video Tutorial - Easily Download and Flash the SteamOS Recovery Image](https://www.youtube.com/watch?v=heo2yFycnsM)
[Click the image below for a video tutorial and to see the functionalities of the script!](https://www.youtube.com/watch?v=heo2yFycnsM)
</b>
<p align="center">
<a href="https://www.youtube.com/watch?v=heo2yFycnsM"> <img src="https://github.com/ryanrudolfoba/SteamDOS-Recovery-Downloader-and-Flasher/blob/main/banner.png"/> </a>
</p>

## What's New (as of January 11 2023)
1. initial release

## Prerequisites for SteamOS
1. sudo password should already be set by the end user. If sudo password is not yet set, the script will ask to set it up.

## How to Use
1. Go into Desktop Mode and open a konsole terminal.
2. Plug in a USB flash drive that will be used for the SteamOS recovery image. \
   a. If no USB flash drive is detected, the script will exit. \
   b. If more than 2 USB flash drives are detected, the script will exit! Make sure only 1 USB flash drive is plugged in!
   
4. Clone the github repo. \
   cd ~/ \
   git clone https://github.com/ryanrudolfoba/SteamOS-Recovery-Downloader-and-Flasher.git
5. Execute the script! \
   cd ~/SteamOS-Recovery-Downloader-and-Flasher \
   chmod +x SteamOS-Recovery-Downloader-and-Flasher.sh \
   ./SteamOS-Recovery-Downloader-and-Flasher.sh
   
6. The script will check if sudo passwword is already set.\
![image](https://github.com/ryanrudolfoba/SteamDeck-dualboot/assets/98122529/0a004f8d-a840-4867-b897-bae2d1b1395d)

   a. If the sudo password is already set, enter the current sudo password and the script will continue to run and the main menu will be displayed. \
   ![image](https://github.com/ryanrudolfoba/SteamDeck-dualboot/assets/98122529/afe7d0d5-500f-4bc5-83f1-db14886bd826)

   b. If wrong sudo password is provided the script will show an error message. Re-run the script and enter the correct sudo password!\
![image](https://github.com/ryanrudolfoba/SteamDeck-dualboot/assets/98122529/41852180-89ce-4d3e-9d91-c25396abfa11)
         
   c. If the sudo password is blank / not yet set, the script will prompt to setup the sudo password. Re-run the script again to continue.\
![image](https://github.com/ryanrudolfoba/SteamDeck-dualboot/assets/98122529/e3845f99-073c-4fdc-8cab-582ad08b87e8)

7. Script will download the latest SteamOS Recovery image from Valve website. Script will verify hash to make sure it is not corrupted and finally flash it automatically to the connected USB device!\
![image](https://github.com/ryanrudolfoba/SteamDeck-dualboot/assets/98122529/afe7d0d5-500f-4bc5-83f1-db14886bd826)


