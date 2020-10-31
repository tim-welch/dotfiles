#! /usr/bin/bash -e

git clone --bare git@github.com:tim-welch/dotfiles.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles worktree add -f $HOME/home master
mv $HOME/home/.git $HOME
rm -rf $HOME/home
git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout

