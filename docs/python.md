# Python

## Why use different Python versions and virtual environments?

As the Python language develops, new features, such as typing support, become available to developers. Projects that harness these new features each require a minimum Python version. Therefore, running multiple Python versions on a single machine is essential for a developer.

Each project also has its own list of package dependencies, or external Python modules. Often, these dependencies conflict between different projects. For example, one project may rely on a deprecated `numpy` feature from v1.0.0, while another may use a `numpy` feature introduced in v2.1.1. Using the same Python environment would raise a dependency conflict that breaks one of the programs. For this reason, developers create "virtual environments" that contain a sandboxed set of Python modules specific for a project.

Developers also use virtual environments to avoid operating system corruption. Linux and macOS both have a preinstalled "system" Python version used for internal tasks. Modifying any of the system packages may have unintended consequences on operating system behavior.

## macOS (ARM)

Pyenv is a command line tool to help simplify the management of multiple Python versions.

### Pyenv

Install `pyenv`.

```zsh
curl https://pyenv.run | bash
```

Confirm installation.

```zsh
pyenv --version
```

Print a list of available Python installations.

```zsh
pyenv install --list
```

Restrict the output to a specific major Python version:

```zsh
pyenv install --list | grep " 3.10"
```

Install a Python version.

```zsh
pyenv install 3.10.5
```

Set the global Python version.

```zsh
pyenv global 3.10.5
```

The global version will become the default Python for your shell.

Confirm that `python` and `pip` point to the correct executables:

```zsh
which python && which pip
/Users/user/.pyenv/shims/python
/Users/user/.pyenv/shims/pip
```

If `.pyenv` is not part of the returned paths, the system environment profile may have to be modified to update the `$PATH` variable.

Open `~/.zprofile` and `~/.zshrc` in the default text editor.

```zsh
open -e ~/.zprofile ~/.zshrc
```

Add the following lines to both documents.

```zsh
# Pyenv configuration
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

Save and close both documents, then refresh the environment and check the `python` and `pip` executables:

```zsh
source ~/.zprofile ~/.zshrc
which python && which pip
```

### Virtual environments

In addition to providing management tools for Python installations, `pyenv` also provides a command line tool for creating virtual environments:

Create a new virtual environment for a project, specifying the Python version and environment name:

```zsh
pyenv virtualenv 3.10.5 env
```

Activate the environment.

```zsh
pyenv shell env
```

Alternatively, set the environment as default for the project directory.

```zsh
pyenv local env
```

Now, every time the project directory is accessed, the system will automatically point to the desired Python executable.

Deactivate the environment.

```zsh
source deactivate
```

## Windows

Pyenv is a command line tool to help simplify the management of multiple Python versions.

### Pyenv

Install `pyenv` with PowerShell.

```ps1
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"
```

Confirm installation.

```ps1
pyenv --version
```

If an error appears, it may be due to the PowerShell security policy. By default, PowerShell prevents the execution of scripts, including those written by the system admin. Change the execution policy to `RemoteSigned`, which requires that external scripts come from verified publishers.

```ps1
Set-ExecutionPolicy RemoteSigned
```

Again, confirm `pyenv` installation.

```ps1
pyenv --version
```

Print a list of available Python installations.

```ps1
pyenv install --list
```

Restrict the output to a specific major Python version.

```ps1
pyenv install --list | Select-String " 3.10"
```

Install Python.

```ps1
pyenv install 3.10.5
```

Set the global Python version.

```ps1
pyenv global 3.10.5
```

The global version will become the default Python for your shell.

Confirm that `python` and `pip` point to the correct executables.

```ps1
 (Get-Command python).Source && (Get-Command pip).Source
C:\Users\user\.pyenv\shims\python
C:\Users\user\.pyenv\shims\pip
```

If `.pyenv` is not part of the returned paths, the system environment variables may need to be reordered to ensure that the Windows `$Path` variable has lower priority than the `pyenv` binaries.

### Virtual environments

Unfortunately, `pyenv-win` does not include the command line tool for managing virtual environments. Windows users must follow the traditional approach using the built-in Python `venv` module.

Create a new virtual environment for a project, specifying the Python version and environment name.

```ps1
python -m venv C:\path\to\env
```

Activate the environment.

```ps1
C:\path\to\env\Scripts\Activate.ps1
```

Deactivate the environment.

```ps1
deactivate
```
