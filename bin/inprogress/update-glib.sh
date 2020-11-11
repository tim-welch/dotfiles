#! /bin/bash -e

# Run the following before this script:
# scl enable devtoolset-9 bash

SRC=~/.local/src
mkdir -p $SRC

# Build and install HarfBuzz
[[ -f $SRC/glib/glib-2.66.2.tar.xz ]] || curl -o glib-2.66.2.tar.xz http://ftp.gnome.org/pub/gnome/sources/glib/2.66/glib-2.66.2.tar.xz
cd $SRC/glib

# Done
echo "Success!"

