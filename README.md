# My dotfiles

## New Machine Setup
Setup brew:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Setup Dotbot
```
mkdir ~/.config
pip3 install dotbot && python3 -m dotbot -c install.conf.yaml
```

Install all the things:
```
HOMEBREW_BUNDLE_FILE='~/.config/Brewfile' brew bundle
```

## git
I split gitconfig in two files to allow different global user settings on different machines (work, personal).

The common config is available in this in this repo and can be used like this:
```
[user]
  email = <email goes here>
  name = <name goes here>
[include]
  path = <path this repo>/gitconfig_common
```

