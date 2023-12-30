# VitaDock Lite  
<img src="./teaser.png" align="center"/>

Yet another Vita Dock but instead of an entire Linux distro or a Docker container its a standalone utility  

despite being called "Lite", VitaDockLite has all the features you need to turn your PC into a dock to stream your PlayStation Vita's display  

VDlite (for my hands sake) uses mpv to display the video output of the vita which we get via the `udcd_uvc.skprx` plugin (i recommend NOT using autoplugin/2)  

# Installation  

## IMPORTANT NOTE  
> Testing is needed to make sure everything works flawlessly  
> to use the last stable version clone the repo then run:  
> `git checkout 76ee4b5`  
> by doing this you will revert this repo to an old commit  
> however i suggest that you try the latest version first  
> if its buggy then purge it and do this step  
> note: installation for older version is explained in the old readme  

## MIGRATION  
> We are sorry to inform you that v0.2.0 is incompatible with v0.0.1+  
> thus you'll need to remove the old Installation and its config files  

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
* `chmod +x ~/.local/share/VDlite/VDockLite`  
* add the executable to your path  
-> I prefer to keep my local binaries at `~/.local/bin` so i create a symlink of the executable to the local bin folder  
the bin folder is added to path and the symlink is created like so `ln -s -r ~/.local/share/VDlite/VDockLite ~/.local/bin`  

### Windows  
* Hey Neko, please add Windblows support  

### Darwin(OSX)  
* Looking for help  

## ==============================  

## Project info  
So what's different about VDlite?  

VDlite doesnt force the user to install a new OS on their raspberry pi nor does it require docker it's simply a standalone app that can coexist with your regular setup  
has theme support (bootup splash) and background music for that dock feel, giving a more dock-like experience while remaining a single app  
VDlite is essentially a script meaning it can run in the background quietly and can be made to start on boot  

### ToDo list:  
* []Add easy windows support  
* []Audio support  
* []Implement start splash  
* []Sync BGM from vita  
* []Recording support  
* []Switch to a better player than `mpv`  

### Configuration  
VDlite is configured via a file under `$HOME/.config/VDockLite/settings.conf` its well commented  




### More ?  
Have a question, feature request or simply want to chat?  
Visit my lab on discord! `link in my public repo` or [here](https://github.com/NekoMimiOfficial/NekoMimiOfficial) 

Made with <3 for the vita community :D  
~NekoMimi  
