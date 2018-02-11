#!/bin/zsh

export EDITOR='vim';
export JAVA_HOME=$(/usr/libexec/java_home)
export TEMPLATES_HOME="$HOME/Documents/templates"
export GOPATH=$HOME/src/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export TERM=xterm-256color

export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

export LESS_TERMCAP_md="${yellow}";
export GREP_OPTIONS='--color=auto';

export PATH="$PATH:/usr/local/sbin";
export PATH="/usr/local/bin:$PATH";

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
