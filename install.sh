#!/bin/sh

echo "Installing dependencies using apt-get and pip3..."
sudo apt-get install python3 python3-pip mpv xwallpaper v4l-utils
sudo -H pip3 install NekoMimi

echo "Setting VitaDockLite as an executable file..."
chmod +x bin/VDockLite

echo "All done! enjoy VitaDockLite <3"
