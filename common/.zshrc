autoload -U colors && colors
autoload -U compinit && compinit

PS1="%{$fg[cyan]%}[%2d]%{$reset_color%}%B$%b "

# Prompt before critical operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Package manager
alias pacsyu='sudo pacman -Syu'                  # Update only standard pkgs
alias pacsyyu='sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # Remove orphaned packages

# Get fastest mirror
alias mirror='sudo reflector -f 30 -l 30 --number 1 --verbose --save /etc/pacman.d/mirrorlist'

# PATH
export PATH="$PATH:$HOME/opt/cross/bin"     # Cross compiler
export PATH="$PATH:$(go env GOPATH)/bin"    # Go
export PATH="$PATH:$HOME/.config/emacs/bin" # Doom Emacs

pfetch
