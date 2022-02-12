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
