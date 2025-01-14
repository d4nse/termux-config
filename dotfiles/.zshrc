setopt histignorealldups sharehistory autocd autopushd pushdignoredups

export PROMPT='%F{green}%~%f %F{red}%#%f
%F{red}`-> %f'

bindkey -v

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors "$(echo "$LS_COLORS" | tr : " ")"
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

export PATH="$PATH:$PREFIX/etc/profile.d" # This allows termux-services to work with ZSH

# Aliases
alias ls="LC_COLLATE=C ls --color=tty --group-directories-first"
alias ll="ls -lh"
alias la="ls -A"
alias grep="grep --color=auto"
alias diff="diff --color"
alias vi="nvim"
alias py="python3"
alias pip="pip3"
alias reload='source $HOME/.zshrc'
alias rsync="rsync -avh --progress"

# Aliases traversal
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
alias ...="cd ../.."
alias ....="cd ../../.."

# Enable remote
dropbear &>/dev/null
