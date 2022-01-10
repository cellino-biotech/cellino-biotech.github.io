# Git

## Prerequisites
* `git` installation
* github account
* Access to github the organization: cellino-biotech

## Configuration
Once `git` is installed on your machine, complete your system configuration to automatically sign commits&mdash;remember to use the email address associated with your github account:

```sh
git config --global user.name "John Doe" git config --global user.email johndoe@example.com
```

## Cloning repositories
Before cloning a repo, follow the [online documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh) to configure ssh credentials for your machine. These credentials are linked to your github account and allow authentication without a password, which saves a significant amount of time when pushing frequent changes. To create a local version of a repo, copy the ssh web address of the project and, with the ZarrSurfer repo as an example, run the clone operation:

```sh
git clone git@github.com:cellino-biotech/zarr_surfer.git
```

## Branch management 
To create a local branch:

```sh
git branch <branch-name>
```

To switch branches:

```sh
git checkout <branch-name> # switch to existing branch
```

As a shorthand:

```sh
git checkout -b <branch-name> # create and switch to new branch
```

To push a local branch to remote:

```sh
git push origin <branch-name>
```


## Pushing/merging changes
To push all changes to a branch:

```sh
git add <files>
git add -m "brief message describing the changes"
git push
```

To merge changes with another branch:

```sh
git checkout <working branch-name>
git merge origin/<remote branch name>
```

source: `{{ page.path }}`
<footer>Copyright © 2021 Cellino Biotech</footer>