# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=14

plugins=(git osx scala maven activator z)

ZSH_THEME="pure"
DISABLE_LS_COLORS="false"
ZSH_CUSTOM=$HOME/.zshcustom/

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"

DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="false"

HIST_STAMPS="yyyy-mm-dd"

# ZSH_CUSTOM=/path/to/new-custom-folder

source $ZSH/oh-my-zsh.sh

# Load custom files
source $HOME/.zsh/aliases.sh
source $HOME/.zsh/exports.sh
source $HOME/.zsh/functions.sh
source $HOME/.extra
