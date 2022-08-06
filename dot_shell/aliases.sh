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
