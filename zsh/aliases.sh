#!/bin/zsh

# Program aliases
alias o="open"
alias rm='trash'
alias vim='nvim'
alias cat='bat'
alias find='fd'
alias rg='ripgrep'
alias ls='exa'
alias l="exa -lahF"

# git aliases
alias gs='git status -sb'
alias gp='git push'
alias gap='git add -p'
alias gco='git commit -m'
alias gpp='git push -u origin HEAD'
alias gdi='git diff'
alias glo='git log'
alias gll='git log --oneline'
alias gls='git log --stat'
alias git_clean="git branch --merged master | grep -v master | xargs -n 1 git branch -d"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"


# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

alias cutt="cut -c1-120"
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
