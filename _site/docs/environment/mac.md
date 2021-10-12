# Mac
> Mac Disclaimer: it is important to follow all steps in the order presented. Most packages rely on a package manager for installation. Furthermore, `pyenv` depends on `git` and `gcloud` requires `python`. Skipping steps will likely cause more headache than necessary.

## Homebrew
If not already installed, it is highly recommended (and required for our automated scripts) to use [homebrew](https://brew.sh/) for general package management in macOS. Use the following command for install:

```zsh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Git
With `homebrew`, install `git`:

```zsh
brew install git
```


## Pyenv
Installing `pyenv` on macOS requires build dependencies and modification of the environment profile. For a manual installation, follow the [instructions from RealPython](https://realpython.com/intro-to-pyenv/). Alternatively, execute the following command to run our in-house install script. Be sure to run the correct command for your shell, as the setup configuration is specific to zsh or bash.

* For developers using zsh:

```zsh
curl "https://raw.githubusercontent.com/cellino-biotech/cellino-biotech.github.io/main/scripts/pyenv-install-mac.zsh?token=AEJ6ATN2U5D54LTK7SPZIOTBNLWW2" | zsh
```

* For developers committed to bash:

```sh
curl https://raw.githubusercontent.com/cellino-biotech/cellino-biotech.github.io/main/scripts/pyenv-install-mac.sh?token=AEJ6ATOQS4T646ZRS27CJ4LBNLXHI | bash
```

With successful completion, the terminal may output a message with instructions to update the PATH variable. This is a default message from the `pyenv` developers and may be disregarded as these steps were automated in the script. After installation, reset the shell:

```zsh
exec "$SHELL"
```

Confirm that pyenv has been installed correctly:

```zsh
pyenv --version
```

Install the desired Python version (3.9.6 recommended):

```zsh
pyenv install 3.9.6
```

Set the new Python distribution as the global executable:

```zsh
pyenv global 3.9.6
```

Confirm that the commands python and pip point to the correct executables (path should include the indicated `.pyenv` directory):

```zsh
which python # /Users/user/.pyenv/shims/python
which pip # /Users/user/.pyenv/shims/pip
```

If the terminal output for each path does not include .pyenv/shims, then try restarting the console and run the commands a second time. If the output still resembles /usr/bin/python, alter your `.bashrc` (your terminal config) as follows
```sh
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile
echo 'if [ -n "$PS1" -a -n "$BASH_VERSION" ]; then source ~/.bashrc; fi' >> ~/.profile

echo 'eval "$(pyenv init -)"' >> ~/.bashrc
```

## Gcloud
Installing the [gcloud SDK](https://cloud.google.com/sdk/docs/install#mac) is slightly more complicated on macOS if following the manual install. Fortunately, we have homebrew:

```zsh
brew install --cask google-cloud-sdk
```

Follow the installation prompts. After successful installation, reset the terminal and run:

```zsh
gcloud init
```

This should redirect you to a browser window prompt. Login with your Cellino Google account credentials and then you will be authenticated for access to our cloud services. For any issues with GCloud Credentials, contact Alex Hersh.


source: `{{ page.path }}`
<footer>Copyright © 2021 Cellino Biotech</footer>