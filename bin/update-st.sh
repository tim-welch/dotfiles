#! /bin/bash -e

# Run the following before this script:
# scl enable devtoolset-9 bash

SRC=~/.local/src
mkdir -p $SRC

# Build and install HarfBuzz
[[ -d $SRC/harfbuzz ]] || git clone https://github.com/harfbuzz/harfbuzz.git $SRC/harfbuzz
cd $SRC/harfbuzz
git pull
meson build
meson compile -C build

# Build and install suckless terminal (st)
[[ -d $SRC/st ]] || git clone https://github.com/tim-welch/st $SRC/st
cd $SRC/st
git pull
[[ -f config.h ]] && rm config.h
make PREFIX=~/.local uninstall
make PREFIX=~/.local clean install
#make PREFIX=~/.local STCFLAGS="-I. -I/usr/include/freetype2" clean install

# Done
echo "Success!"

