# Linux
> Disclaimer: it is important to follow all steps in the order presented. Most packages rely on a package manager for installation. Furthermore, `pyenv` depends on `git` and `gcloud` requires `python`. Skipping steps will likely cause more headache than necessary.

## Package managers
Each Linux flavor has its own default package manager, e.g., apt, yum, and zypper. This tutorial focuses on Ubuntu-based distributions, which include *Mint* and *Pop_OS!*. Reference materials will be linked for installation on other distros.

## Git
To install [git](https://git-scm.com/download/linux):

```sh
sudo apt-get install git
```

## Pyenv

Similar to macOS, `pyenv` installation on Linux requires build dependencies and modification of the environment profile. For a manual installation, follow the [instructions from RealPython](https://realpython.com/intro-to-pyenv/). Alternatively, execute the following command to run our in-house install script. Note that this script only works for users working with bash:

```sh
curl https://raw.githubusercontent.com/cellino-biotech/cellino-biotech.github.io/main/scripts/pyenv-install-linux.sh | bash
```

With successful completion, the terminal may output a message with instructions to update the PATH variable. This is a default message from the `pyenv` developers and may be **disregarded** as these steps were automated in the script. After installation, reset the shell:

```sh
exec "$SHELL"
```

Confirm that pyenv has been installed correctly:

```sh
pyenv --version
```

Install the desired Python version (3.9.6 recommended):

```sh
pyenv install 3.9.6
```

Set the new Python distribution as the global executable:

```sh
pyenv global 3.9.6
```

Confirm that the commands python and pip point to the correct executables:

```sh
which python /Users/user/.pyenv/shims/python which pip /Users/user/.pyenv/shims/pip
```

If the terminal output for each path does not include `.pyenv/shims`, then try restarting the console and run the commands a second time. If the output still resembles `/usr/bin/python`, then please contact the software team for troubleshooting.

## Gcloud
For Linux users, the easiest way to install [gcloud SDK](https://cloud.google.com/sdk/docs/downloads-snap) is via the snap package manager, which comes pre-installed on all modern Ubuntu systems:

```sh
snap install google-cloud-sdk --classic
```

Follow the installation prompts. After successful installation, open a new console and run:

```sh
gcloud init
```

This should redirect you to a browser window prompt. Login with your Cellino Google account credentials and then you will be authenticated for access to our cloud services.


source: `{{ page.path }}`
<footer>Copyright © 2021 Cellino Biotech</footer>