#! /bin/bash -e

# Run the following before this script:
# scl enable devtoolset-9 bash

SRC=~/.local/src
mkdir -p $SRC

update-libxslt.sh # For glib
update-pcre.sh    # For glib
update-glib.sh # For harfbuzz
update-graphite2.sh # For harfbuzz
update-icu.sh # For harfbuzz
update-freetype2.sh # For harfbuzz
update-cairo.sh # For harfbuzz
update-gobject-introspection.sh # For harfbuzz, and glib (should be installed befor gtk+, etc.)
gtk-doc.sh # For harfbuzz
update-FontTools.sh # For harfbuzz
update-harfbuzz.sh
update-freetype2.sh # Reinstall after harfbuzz (cyclic dependency?)

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

