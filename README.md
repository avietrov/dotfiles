# My dotfiles

## Manual Steps
### git
I split gitconfig in two files to allow different global user settings on different machines (work, personal).

The common config is available in this in this repo and can be used like this:
```
[user]
	email = <email goes here>
	name = <name goes here>
[include]
  path = <path this repo>/gitconfig_common
```

