#! /bin/bash -e

SRC=~/.local/src
mkdir -p $SRC

# Build and install clang
[[ -d $SRC/llvm-project ]] || git clone https://github.com/llvm/llvm-project.git $SRC/llvm-project
cd $SRC/llvm-project
git pull
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;libcxx;libcxxabi" -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" ../llvm
cmake --build .

# Done
echo "Success!"

