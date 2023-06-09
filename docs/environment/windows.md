# Windows
> Disclaimer: **Please follow all steps in the order presented:** `pyenv` depends on `git` and `gcloud` requires a python environment through `pyenv`. Most library installations rely on a package manager, such as chocolatey.

## Chocolatey 
[Chocolatey](https://chocolatey.org/) is highly recommended for general package management in Windows. To install this tool, open an administrative PowerShell instance and execute the following command:

```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) 
```

## Git
* Method 1: Download the [git installer](https://git-scm.com/download/win) executable and follow the guided installation. Most users accept the default settings, though you may wish to choose a different text editor and shell application. Many developers prefer `Git Bash`, especially if the individual is more familiar with `bash` and Unix tools.

* Method 2: Install `git` with `chocolatey`:

```ps1
choco install git
```

## Pyenv
Though lacking some of the useful features found in `pyenv`, [pyenv-win](https://github.com/pyenv-win/pyenv-win) is a great tool for managing different Python installations in Windows:

```ps1
choco install pyenv-win
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

Unfortunately, `pyenv-win` does not support virtual environment management. To create a virtual environment in Windows, first create a local `virtualenvs` directory, then navigate to the project directory, set the desired local Python version, and run `python -m venv`:

```ps1
mkdir ~\.virtualenvs
cd <PROJECT_DIR>
pyenv local 3.9.6 # or your preferred python dist
python -m venv ~\.virtualenvs\<VENV NAME>
```

Each time you start a shell, the virtual environment will have to be manually activated. 

For Git Bash:

```sh
source ~/.virtualenvs//<VENV NAME>/Scripts/activate

```

For PowerShell:

```ps1
~\.virtualenvs\<VENV NAME>\Scripts\activate

```
> VSCode NOTE: If your virtual environment is located in your User `.virtualenvs` folder, VS Code can detect your environments and use them to set a workspace's [Python Interpreter](https://code.visualstudio.com/docs/python/environments)

## Gcloud
Windows users have the option to install [gcloud SDK](https://cloud.google.com/sdk/docs/install#windows) using the [official installer](https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe) or the following PowerShell command:

```ps1
(New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe", "$env:Temp\GoogleCloudSDKInstaller.exe") 
& $env:Temp\GoogleCloudSDKInstaller.exe
```

Follow the installation prompts. After successful installation, open a new console and run:

```sh
gcloud init
```

This should redirect you to a browser window prompt. Login with your Cellino Google account credentials and then you will be authenticated for access to our cloud services. 


source: `{{ page.path }}`
<footer>Copyright © 2021 Cellino Biotech</footer>