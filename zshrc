# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/oh-my-zsh
export UPDATE_ZSH_DAYS=14

plugins=(git osx scala mvn activator z docker)

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
source $HOME/.config/zsh/exports.sh
source $HOME/.config/zsh/functions.sh
source $HOME/.config/extra.sh
source $HOME/.config/zsh/fzf.zsh
