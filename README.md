#VitaDock Lite

a standalone python script that serves as the brains to turn your PC (running any debian based distro) into a device to dock your vita in
there are a couple of recommendations about your x-org display setup (this app needs x-org for the custom backgrounds function)
an ideal setup would be like so:

```
 minimal install of openbox
 no panels or docks
 includes this app in the autostart file
```

you may place this script (including the files in the repo itself) anywhere
usually `$HOME/.scripts/` or `$HOME/bin/`
you can transform this into an executable by adding a shebang and ommiting the extension and running `chmod +x executableName`
best way to install this would be to clone the repo directly to the script/bin folder of your choice

to use this app you will need to install a couple of dependencies first:
`sudo apt install python3 python3-pip mpv xwallpaper v4l-utils`

then for the python dependencies:
`pip3 install NekoMimi`

i recommend running the pip3 command after a `sudo -h`

this app supports config files
the main config is placed under `$HOME/.config/VDockLite/options.conf`
pretty self explandatory (well commented)

as for themes they are placed in the `theme/` folder
they work by including 3 files
`connect.*` (image)
`connected.*` (image)
`bgm.*` (music)

the default theme contains assets (made by me and FOSS) that can be reused for other themes

to restore a background just use your wallpaper manager (usually nitrogen, `nitrogen --restore`)

Made by NekoMimi with <3
long live the vita!
