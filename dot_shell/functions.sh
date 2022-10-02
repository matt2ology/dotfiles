##############################################################################
# Useful functions
# Shell Agnostic. Should work both with Bash and ZSH
# https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php
##############################################################################
# Additonal resources:
# https://linuxhint.com/path_in_bash/
# https://stackoverflow.com/questions/370047/what-is-the-most-elegant-way-to-remove-a-path-from-the-path-variable-in-bash
##############################################################################

# Add a path to the PATH variable if it is not already there (idempotent)
# Usage: add_to_path "/path/to/add"
function path_remove() {
    PATH=$(echo -n "$PATH" | awk -v RS=: -v ORS=: "\$0 != \"$1\"" | sed 's/:$//')
}

# Remove a path from the PATH variable if it is there (idempotent)
# Usage: path_remove /usr/local/bin
function path_append() {
    # Does the alias only if the aliased program is installed
    if [ -d $1 ]; then
        path_remove "$1"
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

# Add a path to the PATH variable if it is not already there (idempotent)
# Usage: path_prepend /usr/local/bin
function path_prepend() {
    # Does the alias only if the aliased program is installed
    if [ -d $1 ]; then
        path_remove "$1"
        PATH="$1${PATH:+":$PATH"}"
    fi
}

# Save current location, save here, save this location,
# hold my spot in the terminal window (or tab) and return to it later on
# Usage: here
function here() {
    local loc
    # if there is an argument passed to the function (the directory)
    if [ "$#" -eq 1 ]; then
        # then use it as the location
        loc=$(realpath "$1")
    else
        loc=$(realpath ".")
    fi
    ln -sfn "${loc}" "$HOME/.shell.here" # save the location to the stack
                                         # (the stack is a bash array) and
                                         # change to that directory (cd)
    echo "here -> $(readlink $HOME/.shell.here)" # print the current location
}

# Return to the last saved location
# (the last saved location is the last item in the stack)
there="$HOME/.shell.here" # Location saved from here()

# Go there saved from here() function above (the location saved from here())
# Usage: there
function there() {
    cd "$(readlink "${there}")" # change to the directory saved from here()
}