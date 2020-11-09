#! /bin/bash -e

# Install gcc, git, etc.
sudo yum group install -y "Development Tools"
sudo yum install -y openssl openssl-devel libcurl-devel expat-devel asciidoc xmlto # git
sudo yum install -y libX11-devel libXft-devel freetype-devel glib2-devel cairo-devel meson pkgconfig gtk-doc graphite2 graphite2-devel libicu libicu-devel # st

#sudo yum install -y gtk3 gtk3-devel gtk-doc # termite

# Use update-cmake.sh instead
# sudo yum install -y cmake # neovim

# Install newer gcc toolset
sudo yum install -y centos-release-scl
sudo yum install -y devtoolset-9

# Install i3 window manager
sudo yum --enablerepo=extras install -y epel-release
sudo yum install -y xorg-x11-server-Xorg xorg-x11-xinit i3 i3status dmenu compton

# Done
echo "Success!"

