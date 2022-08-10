##############################################################################
# Useful functions
# Shell Agnostic. Should work both with Bash and ZSH
# https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php
##############################################################################

# https://linuxhint.com/path_in_bash/
# https://stackoverflow.com/questions/370047/what-is-the-most-elegant-way-to-remove-a-path-from-the-path-variable-in-bash
function path_remove() {
    PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "\$0 != \"$1\"" | sed 's/:$//')
}

function path_append() {
    # Does the alias only if the aliased program is installed
    if [ -d $1 ]; then
        path_remove "$1"
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

function path_prepend() {
    # Does the alias only if the aliased program is installed
    if [ -d $1 ]; then
        path_remove "$1"
        PATH="$1${PATH:+":$PATH"}"
    fi
}

# Save current location, save here, save this location, hold my spot
function here() {
    local loc
    if [ "$#" -eq 1 ]; then
        loc=$(realpath "$1")
    else
        loc=$(realpath ".")
    fi
    ln -sfn "${loc}" "$HOME/.shell.here"
    echo "here -> $(readlink $HOME/.shell.here)"
}

there="$HOME/.shell.here" # Location saved from here()

# Go there saved from here()
function there() {
    cd "$(readlink "${there}")"
}
