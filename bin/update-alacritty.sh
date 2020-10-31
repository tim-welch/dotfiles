#! /usr/bin/bash -e

# NOTE: This script must be run when no alacritty terminals are open

mkdir -p ~/src
[[ -d ~/src/alacritty ]] || git clone https://github.com/alacritty/alacritty.git ~/src/alacritty
cd ~/src/alacritty
git pull
cargo build --release
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null

mkdir -p ${ZDOTDIR:-~}/.zsh_functions
if ! grep -q "fpath+=${ZDOTDIR:-~}/.zsh_functions$" ${ZDOTDIR:-~}/.zshrc; then
  echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
fi

mkdir -p ~/.bash_completion
cp extra/completions/alacritty.bash ~/.bash_completion/alacritty
if ! grep -q "source ~/.bash_completion/alacritty$" ~/.bashrc; then
  echo "source ~/.bash_completion/alacritty" >> ~/.bashrc
fi


