#!/bin/zsh

# installs pyenv and prepares environment profile

# reset environment options
emulate -LR zsh

# install build dependencies with homebrew
brew install openssl readline sqlite3 xz zlib

# download pyenv installer and execute with bash
curl https://pyenv.run | bash

# update PATH variable and environment config
echo 'export PYENV_ROOT=$(pyenv root)' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> ~/.zshrc

# re-initialize shell to load updated variables
exec "$SHELL"