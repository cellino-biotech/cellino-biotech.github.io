#!/bin/zsh

# installs pyenv and prepares environment profile

# reset environment options
emulate -LR zsh

# install build dependencies with homebrew
# brew install openssl readline sqlite3 xz zlib
# check return status
# echo $?

# download pyenv installer and execute with bash
# curl https://pyenv.run | bash

# check environment config files
PYENV_ROOT='export PYENV_ROOT=$(pyenv root)'
PYENV_PATH='export PATH="$PYENV_ROOT/shims:$PATH"'

echo $PYENV_PATH