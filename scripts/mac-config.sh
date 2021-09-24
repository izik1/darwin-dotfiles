#!/usr/bin/env bash

# dock

# make dock autohide delay not slow af
defaults write com.apple.dock autohide-delay -float 0; killall

# autohide dock
defaults write com.apple.dock autohide -bool "true"

# don't reorder workspaces pls
defaults write com.apple.dock "mru-spaces" -bool "false"

# we modified the dock, so kill it
killall Dock
