# Powerline10k stuff, keep it at the top
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source "$HOME/.config/powerlevel10k/powerlevel10k.zsh-theme"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable vim-like behaviour
bindkey -v

# PATH extensions
export PATH="$PATH:$PREFIX/etc/profile.d" # This allows termux-services to work with ZSH

# Setup better traversal
setopt autocd autopushd pushdignoredups
alias d="dirs -v | head -10"
alias 1="cd -"
alias 2="cd -2"
alias 3="cd -3"
alias 4="cd -4"
alias 5="cd -5"
alias 6="cd -6"
alias 7="cd -7"
alias 8="cd -8"
alias 9="cd -9"

# Setup autocompletion
autoload -U compinit && compinit
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"

# Aliases
alias ls="ls --color=tty"
alias grep="grep --color=auto"
alias -s {zshrc,zsh,lua,txt,md}=nvim

# Enable remote
dropbear &>/dev/null
