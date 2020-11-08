#! /bin/bash -e

SRC=~/.local/src
mkdir -p $SRC

# Build and install CMake
[[ -d $SRC/CMake ]] || git clone https://github.com/Kitware/CMake.git $SRC/CMake
cd $SRC/CMake
git pull
./bootstrap && make && sudo make install

# Done
echo "Success!"

