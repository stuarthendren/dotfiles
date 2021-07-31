# Dotfiles

This sets up the 'dotfiles' used to configure many aspects of a computer and provides additional support for setup and configuration of applications and the operating system.

This repository should be used to store your 'dotfiles', the files whose name starts with a '.' and are usually stored in the user home directory, this means they can be backed-up and version controlled.

## Secrets

Extra care should be taken to store secret information securely, either in a separate private repository and/or encrypted.

## Installation

Instructions for use and installation.
To initialize the dotbot submodule:

```bash
git submodule init
git submodule update
```

### Sudo

We separate aspects of the installation that require sudo into a separate script. This may need to be run by an administrator.

```bash
./sudo.sh
```

### Bootstrap

The bootstrap script will install the applications and create links to the dotfiles:

```bash
./bootstrap.sh
```

## Notes

The linking is done using [dotbot](https://git.io/dotbot) and configured with the `install.conf.yaml` file. It can be run separately using:

```bash
./install
```

Not all dotfiles need to be stored. Only if setting are changed and the configuration is important should they be linked.

Theme based on https://github.com/Relaxed-Theme/relaxed-terminal-themes#terminal 