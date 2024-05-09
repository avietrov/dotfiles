set -x CDPATH ".:$HOME/Code"
set -x BAT_THEME "base16"

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
alias e='eza -l -h --git --no-permissions --no-user --icons --group-directories-first'

abbr -a mfmt 'mvn fmt:format'

# GIT
abbr -a gap 'git add -p'
abbr -a gb 'git branch -v'
abbr -a gcm 'git commit -m'
abbr -a gco 'git checkout'
abbr -a gd 'git diff'
abbr -a glg "git log --graph --decorate --oneline --abbrev-commit"
abbr -a gll 'git log --oneline'
abbr -a gp 'git push origin HEAD'
abbr -a gpp 'git push -u origin HEAD'
abbr -a gs 'git status -sb'

# K8S
abbr -a k kubectl
abbr -a kx kubectx
abbr -a kn kubens
abbr -a kg 'kubectl get'

source "$HOME/.custom.fish"
