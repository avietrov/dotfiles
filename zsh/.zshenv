#!/bin/zsh

export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';
export EDITOR='vim';
export TERM='xterm-256color';

# JAVA
export JAVA_HOME=$(/usr/libexec/java_home);

# GO
export GOPATH=$HOME/src/go;
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Brew
export PATH="/usr/local/bin:$PATH";
