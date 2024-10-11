alias ls="eza"
alias la="eza -a"
alias lal="eza -al"
alias tree="eza -aT"

DEFAULT_CC_FLAGS="-Wall -Wextra -std=gnu23 -lm"

alias gccfg="gcc ${DEFAULT_CC_FLAGS} -g"
alias gccfo="gcc ${DEFAULT_CC_FLAGS} -O2"

alias bat="bat --theme TwoDark"

alias vim="nvim"
alias vi="nvim"
. "$HOME/.cargo/env"

PATH="$PATH:$HOME/.cargo/"
