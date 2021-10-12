#!/bin/bash

# installs pyenv and prepares environment profile

# install build dependencies with homebrew
brew install openssl readline sqlite3 xz zlib

# download pyenv installer and execute with bash
curl https://pyenv.run | bash

# update PATH variable and environment config
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'export PYENV_ROOT=$(pyenv root)' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc