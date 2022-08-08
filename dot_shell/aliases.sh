# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'

# ls aliases
alias ll='ls -aFhl' # all, classiFy, human readable file size, long list format
alias la='ls -A' # list Almost all
alias l='ls -CF' # list entries by Columns, classiFy

# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

# git related aliases
alias gag='git exec ag'

# chezmoi aliases - https://www.chezmoi.io/user-guide/command-overview/
alias cz='chezmoi'
alias czcd='chezmoi cd' # Launch a shell in the working tree

# ============================================================================
# Custom commands - A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
# ============================================================================

# Check if a file contains non-ascii characters
nonascii() {
    LC_ALL=C grep -n '[^[:print:][:space:]]' "${1}"
}

# Go up [n] directories
#  Example: up 4 (to go up 4 directories up from current location
up()
{
    local cdir="$(pwd)"
    if [[ "${1}" == "" ]]; then
        cdir="$(dirname "${cdir}")"
    elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
        echo "Error: argument must be a number"
    elif ! [[ "${1}" -gt "0" ]]; then
        echo "Error: argument must be positive"
    else
        for ((i=0; i<${1}; i++)); do
            local ncdir="$(dirname "${cdir}")"
            if [[ "${cdir}" == "${ncdir}" ]]; then
                break
            else
                cdir="${ncdir}"
            fi
        done
    fi
    cd "${cdir}"
}
