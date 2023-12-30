#!/bin/bash

#get distro ID
distroIDP=$(cat /etc/*-release | grep ^ID=)
distroID=$(echo $distroIDP | cut -d '=' -f2)

#get distro ID_LIKE
distroIDLP=$(cat /etc/*-release | grep ^ID_LIKE=)
distroIDL=$(echo $distroIDLP | cut -d '=' -f2)

#print info
echo "Detected distribution: "$distroID
echo "Detected ID-like: "$distroIDL

#set debian flag
if [ $distroIDL == "debian" ]
then
  installType=1
elif [ $distroID == "debian" ]
then
  installType=1
else
  installType=0
fi

#set arch flag
if [ $distroIDL == "arch" ]
then
  installType=2
elif [ $distroID == "arch" ]
then
  installType=2
fi

#dep installation
if [[ $installType -eq 1 ]]; then
  sudo apt-get update
  sudo apt-get install -y python3 python3-pip mpv v4l-utils
  pip=1
elif [[ $installType -eq 2 ]]; then
  pacman -Syu python python-pip mpv v4l-utils
  pip=1
else
  pip=0
fi

#pip dep installation
if [[ $pip -eq 1 ]]; then
  sudo -H pip3 install ./pip/NekoMimi.whl
  mkdir ~/.local/share/VDlite
  git clone git@github.com:/NekoMimiOfficial/VitaDockLite ~/.local/share/VDlite --depth 1
fi
