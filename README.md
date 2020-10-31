# My dotfiles

This repository contains my configuration files (dotfiles) for Linux and the applications I use on Linux.

# Install and configure

Clone a bare repo of this repository and create $HOME as a worktree of it:
`curl https://raw.githubusercontent.com/tim-welch/dotfiles/master/bin/setup-dotfiles.sh | sh`

# Create your own bare repo dotfiles repository

1. Create a bare repo in github, gitlab, bitbucket, or whereever you want to keep your repository.
2. Copy my bin/setup-dotfiles.sh script to your computer `curl -o $HOME/bin/setup-dotfiles.sh https://raw.githubusercontent.com/tim-welch/dotfiles/master/bin/setup-dotfiles.sh`
3. Modify bin/setup-dotfiles.sh to clone your repo instead of mine
4. Run `~/bin/setup-dotfiles.sh`

You should now be able to use git to add your dotfiles and then push them to your remote repo.

