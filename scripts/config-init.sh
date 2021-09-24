#!/usr/bin/env bash

REPO=git@github.com:skylerqpq/dotfiles.git
DOTFILES=".dotfiles"
git clone --bare "$REPO" "$HOME/$DOTFILES"

# dotfiles don't exist yet, so we need to create the alias here

function config {
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

config checkout
if [ $? = 0 ]; then
    echo "checked out dotfiles from $REPO"
else
    echo "Moving existing dotfiles to ~/${DOTFILES}-backup"
    mkdir -p "$HOME/${DOTFILES}-backup"
    config checkout 2>&1 egrep "\s+\." | awk {'print $1'} | xargs -I{} mv{} "$HOME/${DOTFILES}-backup/{}"
fi

config checkout
config config --local status.showUntrackedFiles no
