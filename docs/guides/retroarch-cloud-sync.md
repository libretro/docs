# What is it?

RetroArch Cloud Sync is available in recent RetroArch Nighties and enables a seamless synchronization of the most important system configuration and save data to a dedicated private webdav server, from where these data can be synchronized across Apple devices. The current functionality is limited to Apple devices (MacOS, iOS, tvOS) because it was developed here. It can be deployed to other RetroArch operating systems, if a developer is interested in this work.

RetroArch Cloud Sync currently syncs all data from the following directories:

/"YourUser"/Documents/RetroArch/saves - original system saves
/"YourUser"/Documents/RetroArch/states - RetroArch save states
/"YourUser"/Library/Application Support/RetroArch/config - all core-specific configurations, core options and shader configurations, MAME/FBNeo hiscores, but not the global retroarch.cfg

"YourUser" refers to your $HOME user in MacOS

## How to configure it

As with any sync solution, it is recommended to start with one device and ensure a proper functioning. Only then further devices should be added.

### Initial configuration with first device

In order to start with Cloud sync, you need an own webdav account that is accessible by MacOS via the Menu/Connect to Server -> https://webdav.xxxxxx.xxx/.

!!! Tip
    It is obviously the best way to start with your leading RetroArch system, as this will bring the most important data into the webdav account first. In this account, create an own folder called RetroArch.

Within RetroArch, go to Settings/Saving/Cloud Sync
    Enable Cloud Sync -> ON
    Destructive Cloud Sync -> OFF (keeps a backup in a dedicated subfolder called "deleted", and the file names get a time stamp of deletion)
    Cloud Sync Backend -> webdav
    Cloud Storage URL -> https://webdav.xxxxxx.xxx/RetroArch/ (here is the RetroArch subfolder that you created before)
    Username -> your webdav user
    Password -> your webdav password

Save this configuration and restart Retroarch. After this restart, the initial sync should start immediately (see progress indicator in the bottom left status line of RetroArch). Depending on your amount of sync data, this can take some time. When this is finished, you could do some testing. For example, launch a game and set a new hiscore, then close the game. Let the sync do its job, then look into the webdav account, and the new hiscore should be there.

### Configuration of a second device and further devices

With any additional device, you do the identical steps in RetroArch as with the first device. From now on, these devices should be in sync!

!!! Tip
    Be very careful that these directory save settings are also identical on all sync devices:
    - Sort Saves into Folders by Core Name - ON/OFF
    - Sort Save States into Folders by Core Name - ON/OFF
    - Sort Saves into Folders by Content Directory - ON/OFF
    - Sort Save States into Folders by Content Directory - ON/OFF
    If these settings are not matching, the sync is likely to fail, as the devices store its data in different directories.

## Further details of the solution

### Sync Status

Syncing is displayed in the bottom left status line of RetroArch.

As soon as the solution is properly configured, Cloud Sync starts immediately at launching RetroArch. This is apparently important if other devices synced new data to the webdav repository. They are then immediately picked up.

Another sync is triggered with every closing of a game.

### .DS_Store files create conflicts

RetroArch Cloud Sync may run in sync problems if .DS_Store files are synced into the cloud repository. It is therefore recommended to delete all .DS_Store files from the synced directories.

For example, you can delete the .DS.Store files from the relevant RetroArch directories from the terminal as follows (easiest way is that you create an .sh file containing these lines and make it executable via chmod 755):

cd /"YourUser"/Documents/RetroArch 
find . -name '.DS_Store' -type f -delete
cd /"YourUser"/Library/Application\ Support/RetroArch
find . -name '.DS_Store' -type f -delete

After deletion, the sync also deletes these .DS_Store files from the cloud repository.

### Troubleshooting

If the Cloud Sync returns an error, turn logging on and set the logging level to debug, log into a file. Cloud Sync logs reliably into the logfile, so the errors can be read easily.