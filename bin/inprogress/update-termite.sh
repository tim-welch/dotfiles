#! /bin/bash -e

SRC=~/.local/src
mkdir -p $SRC

# Build and install termite
[[ -d $SRC/vte-ng ]] || git clone https://github.com/thestinger/vte-ng.git $SRC/vte-ng
cd $SRC/vte-ng
git pull
export LIBRARY_PATH="/usr/include/gtk-3.0:$LIBRARY_PATH"
./autogen.sh
make
sudo make install

[[ -d $SRC/termite ]] || git clone --recursive https://github.com/thestinger/termite.git $SRC/termite
cd $SRC/termite
git pull
make
sudo make install
sudo ldconfig
sudo mkdir -p /lib/terminfo/x
sudo ln -s /usr/local/share/terminfo/x/xterm-termite /lib/terminfo/x/xterm-termite
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite 60


# Done
echo "Success!"

