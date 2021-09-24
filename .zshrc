alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

alias ls="exa"
alias cat="bat"

eval "$(starship init zsh)"

source /usr/local/share/antigen/antigen.zsh

antigen init ~/.antigenrc
