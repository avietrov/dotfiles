#!/bin/zsh

# Program aliases
alias o="open"
alias vf='vifm .'
alias speedtest='speedtest-cli'
alias rm='trash'
alias vim='nvim'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

alias mvn="mvn-color"
alias cutt="cut -c1-120"
alias zkube="zkubectl"
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
