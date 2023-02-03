# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# vim
alias vim='nvim'
export EDITOR='nvim'

# package manager
alias pacsyu='sudo pacman -Syu'                  # update only standard pkgs
alias pacsyyu='sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages

# get fastest mirror
alias mirror='sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist'

# dotfiles git repo
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="tommy"
plugins=(git)
source $ZSH/oh-my-zsh.sh

#echo '\e[36m
echo '
   ______                               
  /_  __/___  ____ ___  ____ ___  __  __
   / / / __ \/ __ `__ \/ __ `__ \/ / / /
  / / / /_/ / / / / / / / / / / / /_/ / 
 /_/  \____/_/ /_/ /_/_/ /_/ /_/\__  /  
                               /____/
\e[0m'
