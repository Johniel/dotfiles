#!/bin/bash
set -ue

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install bat
brew install exa
brew install fd
brew install fish
brew install rd

git clone git@github.com:Johniel/.emacs.d.git
git clone git@github.com:Johniel/contests.git
mkdir projects
mkdir workspace
