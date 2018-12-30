#!/bin/bash

# Copyright (c) 2018 James Thompson <james@thomps.onl>
# This code is licensed under the MIT license (see LICENSE for details)

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -nfs $SOURCE_DIR/bash/profile $HOME/.bash_profile
