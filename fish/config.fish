if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH
fish_add_path /usr/local/sbin

# ALIASES
alias reload='source ~/.config/fish/config.fish'
alias rm='trash'
alias vim='nvim'
alias e='exa -l -h --git --no-permissions --no-user --icons --group-directories-first'

source "$HOME/.config/custom.fish"

# GIT aliases
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
