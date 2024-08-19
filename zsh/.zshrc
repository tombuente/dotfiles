#!/bin/zsh

autoload -Uz colors; colors
autoload -Uz compinit; compinit
autoload -Uz promptinit; promptinit
autoload -Uz vcs_info

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

PROMPT='%F{cyan}[%2~]%f %F{blue}%#%f '
RPROMPT='${vcs_info_msg_0_}'

export EDITOR=vim
export VISUAL=vim
alias vi='vim'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias less='less -R'

alias home='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias bd='cd "$OLDPWD"'

# Search history
alias h="history | grep "

# Package manager
alias pacsyu='sudo pacman -Syu'
alias pacsyyu='sudo pacman -Syyu'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # Remove orphaned packages

# Get fastest mirror
alias mirror='sudo reflector -f 30 -l 30 --number 6 --verbose --save /etc/pacman.d/mirrorlist'

# PATHc
export PATH="$PATH:$HOME/opt/cross/bin"  # Cross compiler
export PATH="$PATH:$(go env GOPATH)/bin" # Go
