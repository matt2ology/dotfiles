# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Python startup file
export PYTHONSTARTUP=$HOME/.pythonrc

# for common 256 color terminals (e.g. gnome-terminal)
export TERM=xterm-256color

# For config files of programs (i.e. NeoVIM/init.lua)
export XDG_CONFIG_HOME="$HOME/.config"
