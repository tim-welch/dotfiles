#! /bin/bash -e

# Install gcc, git, etc.
sudo yum group install -y "Development Tools"
sudo yum install -y openssl openssl-devel libcurl-devel expat-devel asciidoc xmlto
sudo yum install -y cmake

# Done
echo "Success!"

