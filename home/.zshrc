export ZSH=$HOME/.oh-my-zsh

 #Path to your oh-my-zsh installation.
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git sublime tmux jump bower go node npm pip python virtualenvwrapper brew knife)

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH=$PATH:/usr/local/go/bin/
export GOPATH=$HOME/Development/Go
source $ZSH/oh-my-zsh.sh

alias g="git"
