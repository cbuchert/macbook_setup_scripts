#!/bin/bash

# Install XCode
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install the basics
for i in $(cat applications/homebrew_formula.txt)
do
	brew install "$i"
done

brew tap caskroom/cask
for i in $(cat applications/homebrew-cask_formula.txt)
do
	brew install "$i"
done

brew cleanup

# Set up Node
nvm install latest

# Configure ZSH
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
