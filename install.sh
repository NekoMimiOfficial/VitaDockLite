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
  sudo apt-get install -y python3 python3-pip git mpv v4l-utils
  pip=1
elif [[ $installType -eq 2 ]]; then
  pacman -Syu python python-pip git mpv v4l-utils
  pip=1
else
  echo "Unsupported distribution :("
  pip=0
fi

#pip dep installation
if [[ $pip -eq 1 ]]; then
  mkdir ~/.local/share/VDlite
  mkdir ~/.local/bin
  git clone git@github.com:/NekoMimiOfficial/VitaDockLite ~/.local/share/VDlite --depth 1
  sudo -H pip3 install ~/.local/share/VDlite/pip/NekoMimi*.whl
  chmod +x ~/.local/share/VDlite/VDockLite
  ln -s -r ~/.local/share/VDlite/VDockLite ~/.local/bin
  echo "Installation completed!"
  echo "you may add VDlite to your path by editing your shell-rc file to include the bin folder"
  echo "\$PATH=\$PATH:\$HOME/.local/bin"
fi
