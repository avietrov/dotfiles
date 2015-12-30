# Shortcuts
alias dr="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pr="cd ~/Projects"
alias sl="cd ~/Study/lectures/"

# Program aliases
alias o="open"
alias vf='vifm .'
alias speedtest='speedtest-cli'
alias rm='trash'
alias tv='terminal_velocity'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# mvn
alias mvni="mvn -Pscala-zinc install -DskipTests"
alias mvnci="mvn -Pscala-zinc clean install -DskipTests"

