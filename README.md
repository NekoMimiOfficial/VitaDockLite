# VitaDock Lite  
<img src="./teaser.png" align="center"/>

Yet another Vita Dock but instead of an entire Linux distro or a Docker container its a standalone utility  

VitaDockLite is a bare-bones utility that is meant to be ran as a script in the background which automatically detects your PlayStation Vita(tm) console and streams the screen to your device of choice running the utility    

VitaDockLite works very well with the latest version of `mpv` and I've personally tested it and got a constant 30/60fps on native resolution depending on the game's settings, and have been able to perfect a 9.5 star extreme song on Project Diva F2nd first try with no lag whatsoever  

VDlite (for my hands sake) uses mpv to display the video output of the vita which we get via the `udcd_uvc.skprx` plugin (i recommend NOT using autoplugin/2)  
  
Please note that a new fork of this dock will be created soon to add more features and be more polished as a GUI application that serves as a vita companion more than it being just a dock, while this project remains a minimal solution for those who dont need the extra features and just a simple streaming app  
  
# Installation  

The `install.sh` file will install everything alongside the dependencies (for debian and arch based linux distros) which can be easily ran like so:  
```
curl -sSL https://raw.githubusercontent.com/NekoMimiOfficial/VitaDockLite/main/install.sh | bash
```
please note that the app is installed to `~/.local/share/VDlite`  
while the executable is a symlink found at `~/.local/bin`  
make sure to add it to your path  

-> if your distro isn't supported you can manually run the steps below:  

### Linux  
* clone the repo to ~/.local/share/VDlite  
* install python3, pip3, mpv, v4l-utils  
* install pip dependencies:  
> [ globally ] -> `sudo -H pip3 install ~/.local/share/VDlite/pip/NekoMimi.whl`  
> [ per user ] -> `pip3 install ~/.local/share/VDlite/pip/NekoMimi.whl`  
> you may need to add the --break-system-packages flag to pip3 (dont worry it wont break any system packages as the NekoMimi module isnt packaged for any distribution)  
* `chmod +x ~/.local/share/VDlite/VDockLite`  
* add the executable to your path  
-> I prefer to keep my local binaries at `~/.local/bin` so i create a symlink of the executable to the local bin folder  
the bin folder is added to path and the symlink is created like so `ln -s -r ~/.local/share/VDlite/VDockLite ~/.local/bin`  

### Windows  
* For now please wait until the new project "VitaDockPlus" is released  

### Darwin(OSX)  
General instructions will be given but youll need to proceed on your own knowledge  
* Install python3 and mpv  
* Create a dummy v4l script that will search for video devices (youll have to create this yourself but ill leave the main idea behind it below)  
* add your dummy app to path and make sure to call it v4l2-ctl  
* proceed with the Linux Installation from the pip dependencies part  

### Creating a dummy app to serve as a proxy between video device listing on MacOS and VDlite  
* add a function that runs when `--list-devices` is set in argv  
* loop through each video interface (in order) and check for the device name (e.g. Integrated_Webcam_HD, PSVita)  
* print each device name on a new line:  
```
Integrated_Webcam_HD
PSVita
```
for /dev/video0 and /dev/video1 respectively (as an example)  
a typical output of `v4l-utils` is something like the following:  
```
Integrated_Webcam_HD: Integrate (usb-0000:00:14.0-11):
        /dev/video0
        /dev/video1
        /dev/media0
```
you dont have to list the video mountpoints nor the PCI address, just the name  
as VDlite check the begging of each line to check if it contains "PSVita"  

## ==============================  

## Project info  
So what's different about VDlite?  

VDlite doesnt force the user to install a new OS on their raspberry pi nor does it require docker it's simply a standalone app that can coexist with your regular setup  
VDlite is essentially a script meaning it can run in the background quietly and can be made to start on boot  

### ToDo list:  
found in the `changelog.md`  

### Configuration  
VDlite is configured via a file under `$HOME/.config/VDockLite/settings.conf` its well commented  


### More ?  
Have a question, feature request or simply want to chat?  
Visit my lab on discord! `link in my public repo` or [here](https://github.com/NekoMimiOfficial/NekoMimiOfficial) 

Made with <3 for the vita community :D  
~NekoMimi  
