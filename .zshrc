HISTFILE=$HOME/.zhistory
SAVEHIST=10000
HISTSIZE=9999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
    builtin source "${GHOSTTY_RESOURCES_DIR}/shell-integration/zsh/ghostty-integration"
fi

[ -f "$HOME/.env" ] && source "$HOME/.env"

typeset -U path
path=(
    "/Applications/IDA Professional 9.3.app/Contents/MacOS"
    "$HOME/.grok/bin"
    "$HOME/Library/pnpm"
    "$HOME/.cargo/bin"
    "$HOME/.bun/bin"
    "$HOME/.local/bin"
    "$HOME/.local/share/go/bin"
    "$HOME/go/bin"
    "$HOME/.pyenv/bin"
    "$HOME/.opencode/bin"
    "$HOME/flutter/bin"
    "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    "/Applications/Docker.app/Contents/Resources/bin"
    /opt/homebrew/bin
    /usr/local/bin
    /usr/bin
    /bin
    /usr/sbin
    /sbin
    $path
)

export GOROOT="/opt/homebrew/opt/go/libexec"
export GOPATH="$HOME/.local/share/go"
export GOMODCACHE="$HOME/.local/share/go-mod-cache"

export BUN_INSTALL="$HOME/.bun"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

export EDITOR="nvim"
export VISUAL="nvim"
export LANG=en_US.UTF-8
export BAT_THEME="ansi"

export PIP_UPLOADED_PRIOR_TO="2026-05-11"

export XDG_CONFIG_HOME="$HOME/.config"

[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

zinit ice wait'0' lucid atinit'zpcompinit; zpcdreplay'
zinit light zsh-users/zsh-completions

zinit ice wait'0' lucid atload'_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit ice wait'0' lucid
zinit light zsh-users/zsh-syntax-highlighting

fpath=($HOME/.zsh/completions $fpath)

autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit
else
    compinit -C
fi
autoload -U +X bashcompinit && bashcompinit

zstyle ':completion:*' menu select
zstyle ':completion:*' complete-options true
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
bindkey '^r' _atuin_bind_widget

alias cl="clear"
alias cat="bat"
alias lg="lazygit"
alias ai="aichat"
alias http="xh"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

cx() { cd "$@" && ls; }

ns() {
    rm -f ~/.nvim-startup.txt
    nvim --headless --startuptime ~/.nvim-startup.txt +qa
    grep "NVIM STARTED" ~/.nvim-startup.txt
}

nh() {
    rm -f ~/.nvim-startup.txt
    nvim --headless --startuptime ~/.nvim-startup.txt +qa
    bat ~/.nvim-startup.txt
}

