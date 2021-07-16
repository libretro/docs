
# Downloading and Installing RetroArch for Steam Link

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/02M9SdUKLa0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

==Steam Link build isn't in automated build due both SteamLink SDK and LibRetro changes. However you can download [here](https://github.com/fpscan/RetroArch-AppImage/releases/tag/steam) for decent version. The download and installation process is as follows, and may change in the future. Threads, alsa, pulse, neon and shaderpipeline are disabled, RGUI theme is pre-configured and most Cores installed into the root folder for full efficiency.==

## Prerequisites

This is probably the most straightforward way to install RetroArch.

- FAT32 formatted USB

## Download

You can find a cores bundle with RetroArch by clicking [here](https://www.retroarch.com/index.php?page=platforms) and scroll down until you see the **Steam Link** section.

## Getting USB Ready

### Setting up RetroArch

Getting RetroArch ready to install is very simple. Create the file structure in the root directory of your USB as follows:

> steamlink/apps/

Unzip the `RetroArch.zip`,  move the `RetroArch` folder into the `apps` folder we just created.

## Content Management

Transferring files to Steam Link can be a bit tedious. You can put your contents inside the `Content` folder in the `RetroArch` folder, however our goal is to make this process more sustainable. In this case SSH or USBmount will help us.

### SSH

In order to use an SFTP connection with SSH, we must first enable SSH. It's easy to enable SSH on your Steam Link. To do this, go to `steamlink` folder and create two nested folders first create the `Config` directory then enter it and create the `System` directory there. The directory structure should be as follows;

> steamlink/config/system/

Then, enter the `System` directory and create an empty text file named `enable_ssh.txt`.

Within this, create a blank text file, and label it **enable_ssh.txt**. The final directory structure should be as follows:

> steamlink/config/system/enable_ssh.txt
>
### USBmount

USBmount is an alternative way to connect `/mnt/disk`. You can find more detailed information in the link below.

[https://steamcommunity.com/app/353380/discussions/1/152393186490496699/](https://steamcommunity.com/app/353380/discussions/1/152393186490496699/)

Put your USBmount folder into `steamlink/apps/`

*RetroArch is not affiliated with the above link this link may change in the future or may not be original, this subject may vary.*

## Installation

After completing the above operations, you should have a directory structure like the one below. Repeat the above steps until you reach the final result.

|   |   |   |   |   |
|---|---|---|---|---|
| steamlink  |  apps |  retroarch |...   |   |
|   | config  | system  | enable_ssh.txt  |   |


Format your USB to FAT32 type for fresh install. Move the `steamlink` folder we just created into your USB root. Unplug your USB and make sure your SteamLink is completely turned off by unplugging the power cord. Plug your USB into the first USB port, and then plug in the power cable. When Steam Link boots, RetroArch structure will be read, and RetroArch will be installed. Remove the USB after you see the RetroArch logo on the home screen. You can run the application by pressing the RetroArch logo.

## Content Transfer

We can transfer our content with SSH or USBmount we have previously configured.

### SSH

Find out the IP address that SteamLink receives, which you can learn from your router or SteamLink network settings. Create an SFTP connection with your trusted FTP tool. SteamLink SSH username is `root` and password is `steamlink123`, 21 for FTP and 22 for SFTPthe sample scenario for this is as follows. It may be different(ip address) in your case. RetroArch is not related to the specified applications and cannot be held responsible.

FileZilla

| Host  | Username  | Passoword  | Port  |
|---|---|---|---|
| 192.168.1.5  | root  |  steamlink123 | 22  |

Go to root folder and open `apps` folder, you will see RetroArch folder in there. Open it and move your contents to `contents` folder.

### USBmount

Install USBmount the same way we install RetroArch. Remove the `RetroArch` folder from the `apps` directory before installation. Otherwise it will re-install on every boot.

After completing the installation, create a folder on your USB and move your contents. Then plug the USB into your SteamLink and run the installed `USBmount` application.
