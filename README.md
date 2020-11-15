# My dotfiles

This repository contains my configuration files (dotfiles) for Linux and the applications I use on Linux.

## Getting started

### Dependencies
* To install the dotfiles, you will need a version of git that supports worktrees.
* Use my setup-linux repo on github to install the applications.

### Create your own bare repo dotfiles repository

1. Create a bare repo in github, gitlab, bitbucket, or whereever you want to keep your repository.
2. Copy my bin/setup-dotfiles.sh script to your computer `curl -o $HOME/bin/setup-dotfiles.sh https://raw.githubusercontent.com/tim-welch/dotfiles/master/bin/setup-dotfiles.sh`
3. Modify bin/setup-dotfiles.sh to clone your repo instead of mine
4. Run `~/bin/setup-dotfiles.sh`

You should now be able to use git to add your dotfiles and then push them to your remote repo.

## Technical

### Fedora 32
#### Monitors

Fedora did not detect my second screen correctly. It assumed 1024x768 as max resolution. I found
https://unix.stackexchange.com/questions/292714/bad-resolution-on-second-monitor-fedora-24 and
followed the instructions to fix the resolution of my second screen.

1. To list the monitors execute `xrandr -q`. This will tell you if you are using Wayland or xorg.
2. By default Fedora 32 uses Wayland. To make dual monitors work with proper resolution, I had to
uncomment the line `WaylandEnable=false` in `/etc/gdm/custom.conf` and restart the computer.
3. Get a new modeline `cvt 1920 1080`
4. Create the new mode `xrandr --newmode "1920x1080_60.00" 173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync`
5. Add the new mode to the second display `xrandr --addmode DP-2 "1920x1080_60.00"`

I created a script `~/bin/fixup-screen.sh` since it doesn't seem to persist.

#### Boot to text-based login prompt

`sudo systemctl set-default multi-user.target`
