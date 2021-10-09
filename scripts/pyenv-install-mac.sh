#!/bin/bash

# installs pyenv and prepares environment profile

# install build dependencies with homebrew
brew install openssl readline sqlite3 xz zlib
# check return status
echo $?

# download pyenv installer and execute with bash
curl https://pyenv.run | bash