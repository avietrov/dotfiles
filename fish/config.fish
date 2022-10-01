set -x CDPATH ".:$HOME/Code"
# BREW
set -x HOMEBREW_BUNDLE_FILE '~/.config/Brewfile'
if test -e /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
else if test -e /usr/local/bin/brew
  eval (/usr/local/bin/brew shellenv)
end

# PYENV
if command -sq pyenv
  status is-login; and pyenv init --path | source
  status is-interactive; and pyenv init - | source
end

# GO
set -x GOPATH $HOME/src/go
fish_add_path $GOPATH/bin

# Rust
set -x RUSTUP_HOME $HOME/Code/.rustup
set -x CARGO_HOME $HOME/Code/.cargo
fish_add_path $CARGO_HOME/bin

# ALIASES
alias reload='source ~/.config/fish/config.fish'
alias rm='trash'
alias vim='nvim'
alias e='exa -l -h --git --no-permissions --no-user --icons --group-directories-first'
alias mfmt='mvn fmt:format'

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
