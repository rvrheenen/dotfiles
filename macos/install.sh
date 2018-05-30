#!/usr/bin/env bash

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

if [ "$(uname -s)" == "Darwin" ]
then
  printf "Do you want to run the mac softwareupdater? [Y/N]"
  read doupdate

  if [ $doupdate = "y" ] || [ $doupdate = "Y" ] || [ $doupdate = "yes" ] || [ $doupdate = "Yes" ] || [ $doupdate = "YES" ]
  then
    echo "› sudo softwareupdate -i -a"
    sudo softwareupdate -i -a
  fi
fi
