#!/bin/bash

function getDistro() {
    sh -c "cat /etc/*-release | grep ID_LIKE= | cut -f2- -d ="
}

distro=$(getDistro)

echo "Verifying Linux Distribution and trying to install dependencies..."
if [ $distro = "debian" ] 
then 
    sudo apt update
    sudo apt install -y python3 python3-pip mpv xwallpaper v4l-utils
    
    #define variable to continue dependencies installation
    continue=1
elif [ $distro = "arch" ] 
then 
    sudo pacman -Syu --noconfirm python python-pip mpv xwallpaper v4l-utils
    
    #define variable to continue dependencies installation
    continue=1
else 
    echo "Linux Distribution not supported"
    
    #define variable to cancell dependencies installation
    continue=0
fi


if [ $continue -eq 1 ]
then
    sudo -H pip3 install NekoMimi

    echo "Setting VitaDockLite as an executable file..."
    chmod +x bin/VDockLite

    echo "All done! enjoy VitaDockLite <3"
fi
