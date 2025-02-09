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
	brew cask install "$i"
done

brew cleanup

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
