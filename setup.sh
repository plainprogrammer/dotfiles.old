#!/bin/bash

# Copyright (c) 2018 James Thompson <james@thomps.onl>
# This code is licensed under the MIT license (see LICENSE for details)

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cat $SOURCE_DIR/README

echo 'Symlinking Bash profile into place...'
ln -nfs $SOURCE_DIR/bash/profile $HOME/.bash_profile

echo 'Configuring global git configurations...'
git config --global user.name "James Thompson"
git config --global user.email "james@thomps.onl"
git config --global core.excludesfile $SOURCE_DIR/.gitignore

echo 'Configuring global git aliases...'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'

echo 'Reloading shell settings...'
source $HOME/.bash_profile

echo -e "Done \xE2\x9C\x94"
