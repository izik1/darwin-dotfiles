path=('/opt/homebrew/opt/openssl@3/bin' $path)
eval "$(/opt/homebrew/bin/brew shellenv)"

alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

alias ls="exa"
alias cat="bat"
alias cf="cargo +nightly fmt"
alias cck="cargo check"
alias cr="cargo run"
alias xcode-13-2="sudo xcode-select -s /Applications/Xcode\ 13.2.app/Contents/Developer"
alias xcode-latest="sudo xcode-select -s /Applications/Xcode.app/Contents/Developer"

eval $(thefuck --alias)
# Mondays:
eval $(thefuck --alias FUCK)
# lighthearted
eval $(thefuck --alias dewit)
eval $(thefuck --alias doit)
eval $(thefuck --alias shipit)

fpath+=("$HOME/completions")

source "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh"

antidote load

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

eval "$(starship init zsh)"
