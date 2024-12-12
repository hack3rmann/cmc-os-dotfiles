# ENVs
. "$HOME/.cargo/env"
PATH="$PATH:$HOME/.cargo/"

export EDITOR=nvim

# `eza` is installed
if [[ ! "$(which eza)" = "" ]]; then
    alias ls="eza"
    alias la="eza -a"
    alias lal="eza -al"
    alias tree="eza -T"
fi

# `bat` is installed
if [[ ! "$(which bat)" = "" ]]; then
    alias bat="bat --theme TwoDark"
fi

DEFAULT_CC_FLAGS="-Wall -Wextra -std=gnu23 -lm"

alias gccfg="gcc ${DEFAULT_CC_FLAGS} -g"
alias gccfo="gcc ${DEFAULT_CC_FLAGS} -O2"

# Custom compile commands

ccc() {
    # Create compiled binary directory
    mkdir -p bin
    
    FILE_NAME_REGEX='^(.*)\.(c|cpp|h|hpp)$'

    if [[ "$2" =~ $FILE_NAME_REGEX ]]; then
        FILE_NAME=${BASH_REMATCH[1]}
        EXTENSION=${BASH_REMATCH[2]}

        if [[ ! $EXTENSION = "c" ]]; then
            FILE_NAME=$2
            printf "Unsupported extension '$EXTENSION'\n"
        fi
    else
        echo DOESN\'T MATCH
        FILE_NAME=$2
    fi

    gcc $DEFAULT_CC_FLAGS $1 $2 -o bin/$FILE_NAME
}

alias ccg="ccc -g"
alias cco="ccc -O2"

CONTEST_PATH="$HOME/contest"
ATTACH_SCRIPT="$HOME/dotfiles/attach_ejudge.sh"

submit() {
    if [[ $1 = "--help" || $1 = "-h" ]]; then
        printf "ejudge solution submition helper.\n\nUsage: submit [PROBLEM] [FILE]\n\n"
        return 1
    fi

    # Attach ejudge if it is not attached
    if [[ ! -d $CONTEST_PATH ]] || [[ -z "$(ls -A $CONTEST_PATH)" ]]; then
        echo "Authorize ejudge:"
        $ATTACH_SCRIPT
    fi

    PROBLEM=$1
    SOLUTION=$2

    # Check formatting
    if [[ ! "$(cat $SOLUTION)" = "$(clang-format $SOLUTION)" ]]; then
        echo "File $SOLUTION is not formatted properly, use clang-format first."
        return 0
    fi

    echo "Submitting solution $SOLUTION to problem $PROBLEM"
    cp $SOLUTION "$CONTEST_PATH/524/problems/$PROBLEM/submit/gcc/"
}
