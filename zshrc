# To include this file, add in your .zshrc file:
# "source path/to/dotfiles-fedora/zshrc"
# define DOTFILES env 

export ZSH="$HOME/.oh-my-zsh"
export TRASH_DIR="$HOME/.local/trash"

ZSH_THEME="af-magic"
HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
	aws
	docker
	docker-compose
	dnf
	git
	kubectl
	kube-ps1
	npm
	nvm
	zsh-interactive-cd
)

source $ZSH/oh-my-zsh.sh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#663399,standout"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# ALIAS
alias ls="lsd"
alias v="nvim"
alias vim="nvim"
alias cat="bat"

alias n="nordvpn"
alias nc="nordvpn connect"
alias nd="nordvpn disconnect"

alias copy="xclip -selection clipboard"

alias df="df -h"
alias free="free -h"

alias bright='$DOTFILES/i3/scripts/brightness.sh'

# Safe remove
remove() {
    mkdir -p "$TRASH_DIR" 

    for file in "$@"; do
	timestamp=$(date +%Y%m%d%H%M%S)
        mv "$file" "$trash_dir/$(basename "$file")-$timestamp"
    done
}

alias empty-trash="rm -rf $TRASH_DIR/*"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# EDITOR
export EDITOR=nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

