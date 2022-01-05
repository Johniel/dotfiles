#!/bin/bash
set -ue

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install bat
brew install exa
brew install fd
brew install fish
brew install rd
brew install git-delta

git clone git@github.com:Johniel/.emacs.d.git
git clone git@github.com:Johniel/contests.git
mkdir ~/projects
mkdir ~/workspace
mkdir ~/memo

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher add jethrokuan/z

cat <<EOS >> ~/.gitconfig
[core]
    pager = delta --plus-color="#012800" --minus-color="#340001" --theme='Monokai Extended'

[interactive]
    diffFilter = delta --color-only

[delta]
    side-by-side = true
    line-numbers = true
EOS
