#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

fi

# Run Homebrew through the Brewfile
echo "› brew bundle"

user "Do you want the basic or the full brew installation?\\n\
1: basic  2: full"
read install
echo $install

brew bundle --file=${DOTFILES}/brew/Brewfile_basic
if [ $install = "2" ] || [ $install = "full" ]
then
    brew bundle --file=${DOTFILES}/brew/Brewfile_full
fi

if test "$(uname)" = "Darwin"
then
  brew bundle --file=${DOTFILES}/brew/Brewfile_basic_macos
  if [ $install = "2" ] || [ $install = "full" ]
  then
      brew bundle --file=${DOTFILES}/brew/Brewfile_full_macos
  fi
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
  brew bundle --file=${DOTFILES}/brew/Brewfile_basic_linux
  if [ $install = "2" ] || [ $install = "full" ]
  then
      brew bundle --file=${DOTFILES}/brew/Brewfile_full_linux
  fi
fi


exit 0
