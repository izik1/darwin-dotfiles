#!/usr/bin/env bash

if [ -f "$HOME/.ssh/id_ed25519" ];then
    echo "ssh key already generated"
    exit 1
fi

echo "generating ssh key, you will be prompted to enter a password"

ssh-keygen -t ed25519 -f "$HOME/.ssh/id_ed25519"

if [ $? != 0 ];then
    echo "key generation failed"
    exit 1
fi

# start ssh-agent
eval "$(ssh-agent -s)"

ssh-add --apple-use-keychain ~/.ssh/id_ed25519

if [ $? != 0 ];then
    echo "couldn't add key"
    exit 1
fi
