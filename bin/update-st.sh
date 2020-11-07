#! /bin/bash -e

# Create ~/src to hold git repos for builds
mkdir -p ~/src

# Build and install HarfBuzz
[[ -d ~/src/harfbuzz ]] || git clone https://github.com/harfbuzz/harfbuzz.git ~/src/harfbuzz
cd ~/src/harfbuzz
git pull
meson build
# Disable building harfbuzz until I have a C99 compatible compiler
#meson compile -C build

# Build and install suckless terminal (st)
[[ -d ~/src/st ]] || git clone https://git.suckless.org/st ~/src/st
cd ~/src/st
make PREFIX=~/.local clean install
#make PREFIX=~/.local STCFLAGS="-I. -I/usr/include/freetype2" clean install

# Done
echo "Success!"

