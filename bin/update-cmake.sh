#! /bin/bash -e

# Create ~/src to hold git repos for builds
mkdir -p ~/src

# Build and install CMake
[[ -d ~/src/CMake ]] || git clone https://github.com/Kitware/CMake.git ~/src/CMake
cd ~/src/CMake
git pull
./bootstrap && make && sudo make install

# Done
echo "Success!"

