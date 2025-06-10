#!/bin/bash

echo "setting macos defaults..."

sudo -v

# disable autocorrect
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# finder show extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# autocaps
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# allow quit finder
defaults write com.apple.finder QuitMenuItem -bool true

echo "finished!"
