#! /bin/bash -e

# Run the following before this script:
# scl enable devtoolset-9 bash

# Create ~/src to hold git repos for builds
mkdir -p ~/src

# Build and install HarfBuzz
[[ -d ~/src/harfbuzz ]] || git clone https://github.com/harfbuzz/harfbuzz.git ~/src/harfbuzz
cd ~/src/harfbuzz
git pull
meson build
meson compile -C build

# Build and install suckless terminal (st)
[[ -d ~/src/st ]] || git clone https://github.com/tim-welch/st ~/src/st
cd ~/src/st
git pull
[[ -f config.h ]] && rm config.h
make PREFIX=~/.local uninstall
make PREFIX=~/.local clean install
#make PREFIX=~/.local STCFLAGS="-I. -I/usr/include/freetype2" clean install

# Done
echo "Success!"

