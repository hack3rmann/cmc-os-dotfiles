# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

ZSH="$HOME/.local/bin/zsh"
if [[ -x $ZSH ]]; then
    $ZSH
fi

source ~/.aliases.sh

eval "$(zoxide init bash --cmd cd)"
. "$HOME/.cargo/env"

CONTEST_PATH="$HOME/contest"
ATTACH_SCRIPT="$HOME/dotfiles/attach_ejudge.sh"

submit() {
    # Attach ejudge if it is not attached
    if [[ ! -d $CONTEST_PATH ]] || [[ -z "$(ls -A $CONTEST_PATH)" ]]; then
        echo "Authorize ejudge:"
        $ATTACH_SCRIPT
    fi

    echo "Submitting solution $2 to problem $1"
    cp "$2" "$CONTEST_PATH/524/problems/$1/submit/gcc/"
}
