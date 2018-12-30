#!/bin/bash

# Copyright (c) 2018 James Thompson <james@thomps.onl>
# This code is licensed under the MIT license (see LICENSE for details)

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -nfs $SOURCE_DIR/bash/profile $HOME/.bash_profile

# Configure global git settings
git config --global user.name "James Thompson"
git config --global user.email "james@thomps.onl"
git config --global core.excludesfile $SOURCE_DIR/.gitignore

# Configure global git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
