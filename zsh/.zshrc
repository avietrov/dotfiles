# Basic terminal settings
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';
export EDITOR='vim';
export TERM='xterm-256color';

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/oh-my-zsh
export UPDATE_ZSH_DAYS=14

plugins=(brew catimg chucknorris colorize docker git osx pyenv)

ZSH_THEME="pure"
DISABLE_LS_COLORS="false"
ZSH_CUSTOM=$HOME/.config/zshcustom/

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"

DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="false"

HIST_STAMPS="yyyy-mm-dd"

source $ZSH/oh-my-zsh.sh

# Load custom files
source $HOME/.config/zsh/aliases.sh
source $HOME/.config/zsh/functions.sh
source $HOME/.config/extra.sh

eval $(thefuck --alias)

# JAVA
export JAVA_HOME=$(/usr/libexec/java_home);

# GO
export GOPATH=$HOME/src/go;
export GOROOT=/usr/local/opt/go/libexec;
export PATH=$PATH:$GOPATH/bin;
export PATH=$PATH:$GOROOT/bin;
