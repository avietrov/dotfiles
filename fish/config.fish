set -x BAT_THEME "base16"

# BREW
set -x HOMEBREW_BUNDLE_FILE '~/.config/Brewfile'
set -x HOMEBREW_NO_ENV_HINTS "1"
eval (/opt/homebrew/bin/brew shellenv)

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


if test -e "$HOME/.custom.fish"
    source "$HOME/.custom.fish"
end
