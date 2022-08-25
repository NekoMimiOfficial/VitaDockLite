# VitaDock Lite

Yet another Vita Dock but instead of an entire Linux distro or a Docker container its a standalone utility

dont let the Lite fool you, VitaDockLite has all the features you need to turn your PC into a dock to stream your PlayStation Vita's display


VDlite (for my hands sake) uses mpv to display the video output of the vita which we get via the `udcd_uvc.skprx` plugin (i recommend NOT using autoplugin/2)

Audio support isn't implemented but as most people would do anyways using a Bluetooth speaker or a speaker through an AUX cable is just fine

although its still in development you can use the current version of VDlite just fine (the app atleast since it makes the core) available in bin/ (add it to path)




# Installation
clone this repo in ~/.local or any localtion then add $HOME/.local/VitaDockLite/bin/ to your $PATH

run `chmod +x install.sh` then `./install.sh` which will install dependencies and set VDlite as executable

run `VDockLite`

thats it!



# Project info
So what's different about VDlite?

VDlite doesnt force the user to install a new OS on their raspberry pi nor does it require docker

it works on x-org Window Managers (works on Wayland and DEs but some features may be limited)

has theme support and background music for that dock feel


current plan:

get a qtile based Windows Manager configured so starting VDlite up can be as simple as logging into your account (and just that) (change your graphical session to return to your DE/WM/GUI)

get bluetooth audio to work (extra but nice to have)

setup a store like interface to download homebrew off vitadb then automatically transfer it via FTP to the vita

setup recording and streaming (extra may not do)



# More ?
Want to collab or talk? Hit me up! `Discord: NekoMimi#7225`

Made with <3 for the vita community :D

~NekoMimi
