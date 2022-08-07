# Save current location, save here, save this location, hold my spot
here() {
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
there() {
    cd "$(readlink "${there}")"
}
