#!/bin/bash
set -ue

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install bat
brew install exa
brew install fd
brew install fish
brew install rd
brew install git-delta
brew install tree
brew install pwgen
brew install jq
brew install bottom
brew install xsel
brew install adr-tools

git clone git@github.com:Johniel/.emacs.d.git
git clone git@github.com:Johniel/contests.git
mkdir ~/projects
mkdir ~/workspace
mkdir ~/memo
mkdir ~/tmp

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher install jethrokuan/z

cat <<EOS >> ~/.gitconfig
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections
    light = false    # set to true if you're in a terminal w/ a light background color (e.g. the default macOS terminal)

[merge]
    conflictstyle = diff3

[diff]
    colorMoved = default

EOS
