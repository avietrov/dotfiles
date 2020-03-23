#!/bin/zsh

# Program aliases
alias o="open"
alias rm='trash'
alias vim='nvim'
alias cat='bat'
alias find='fd'
alias grep='ripgrep'
alias ls='exa'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"


# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

alias cutt="cut -c1-120"
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
alias git_clean="git branch --merged master | grep -v master | xargs -n 1 git branch -d"
