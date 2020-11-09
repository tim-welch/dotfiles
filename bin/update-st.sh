#! /bin/bash -e

# Run the following before this script:
# scl enable devtoolset-9 bash

SRC=~/.local/src
mkdir -p $SRC

#[[ -d $SRC/freetype2 ]] || { mkdir -p $SRC/freetype2 && curl -o $SRC/freetype2/freetype-2.10.4.tar.xz https://downloads.sourceforge.net/project/freetype/freetype2/2.10.4/freetype-2.10.4.tar.xz; } 
#cd $SRC/freetype2
#tar -xJf freetype-2.10.4.tar.xz
##tar -xJf freetype-doc-2.10.4.tar.xz --strip-components=2 -C docs
#sed -ri "s:.*(AUX_MODULES.*valid):\1:" modules.cfg
#set -r "s:.*(#.*SUBPIXEL_RENDERING) .*:\1:" -i include/freetype/config/ftoption.h
#./configure --prefix=/usr --enable-freetype-config --disable static
#make
#sudo make install
##sudo install -v -m755 -d /usr/share/doc/freetype-2.10.4
##sudo cp -v -R docs/* /usr/share/doc/freetype-2.10.4
##sudo rm -v /usr/share/doc/freetype-2.10.4/freetype-config.1

# Build and install HarfBuzz
[[ -d $SRC/harfbuzz ]] || git clone https://github.com/harfbuzz/harfbuzz.git $SRC/harfbuzz
cd $SRC/harfbuzz
git pull
meson build
meson compile -C build

## B/c of cyclic dependencies reinstall freetype2 after installing HarfBuzz
#cd $SRC/freetype2
#./configure --prefix=/usr --enable-freetype-config --disable static
#make
#sudo make install
#sudo install -v -m755 -d /usr/share/doc/freetype-2.10.4
#sudo cp -v -R docs/* /usr/share/doc/freetype-2.10.4
#sudo rm -v /usr/share/doc/freetype-2.10.4/freetype-config.1


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

