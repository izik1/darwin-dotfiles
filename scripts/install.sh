#!/usr/bin/env bash -x

echo "installing brew"

# install brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "disabling brew analytics"
brew analytics off

echo "installing dotfiles..."

# then install dotfiles (installing brew ensures we have `git` and such, since it uses it
curl "https://raw.githubusercontent.com/skylerqpq/dotfiles/main/scripts/config-init" | bash

echo "installing base Brew bundle..."

brew bundle --file "$HOME/Brewfile-base"

echo "Finished"

