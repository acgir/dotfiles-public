# -*- mode: sh; sh-shell: bash; -*-
# ~/.bashrc: executed by bash(1) for non-login shells

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


export PATH=$HOME/tools/bin:$HOME/dotfiles-public/bin:/usr/local/bin:${PATH}

bind -u complete-filename
bind '"\e/": dabbrev-expand'

test -f ~/dotfiles-public/bash_zsh_alias && source ~/dotfiles-public/bash_zsh_alias
test -f ~/dotfiles/bash_zsh_alias && source ~/dotfiles/bash_zsh_alias

PS1='\u@\h \w \$ '
