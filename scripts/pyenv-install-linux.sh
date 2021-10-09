#!/bin/bash

# installs pyenv and prepares environment profile

# install build dependencies
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# download and run pyenv installer
curl https://pyenv.run | bash

# update PATH variable and environment config
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'export PYENV_ROOT=$(pyenv root)' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc