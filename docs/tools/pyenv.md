# Pyenv
## Prerequisites
* `pyenv` installation

## Python installation
To see all Python versions available for download:

```sh
pyenv install --list
```

Note: this listing is extensive and can be focused by piping the output to grep. To install Python distributions, with version 3.9.6 as an example:

```sh
pyenv install 3.9.6
# use the -v option to print updates during installation
pyenv install -v 3.9.6
```

## Scope configuration
Check to see all Python versions on local machine and configure scope settings:

```sh
# print list of installed Python versions
pyenv versions
# ...
* system (set by /Users/user/.pyenv/version)
3.7.8
3.9.6
```

Configure global and local Python versions
```sh
# set Python 3.7.8 as the global executable
pyenv global 3.7.8
# set Python 3.9.6 as the local executable for the working directory
pyenv local 3.9.6
```

## Virtual environments
Unfortunately, `pyenv virtualenv` is not available for Windows. On Mac and Linux, virtual environments can be created by specifying the Python version and environment name:

```sh
pyenv virtualenv 3.7.8 <env-name>
```

It is not necessary for the environment to be created in a specific directory, as is the case with venv. To link the environment with a project, simply navigate to the directory and set the local Python as the environment name:

```sh
cd projectdir
pyenv local <env-name>
```

Now, every time that directory is entered, the virtual environment will load automatically.

source: `{{ page.path }}`
<footer>Copyright © 2021 Cellino Biotech</footer>