##############################################################################
# Add additional environment variables paths
# Script uses functions `path_prepend` and `path_append` located in 
# .shell/functions.sh
##############################################################################
path_prepend "/usr/local/bin"
path_prepend "/usr/local/sbin"
path_prepend "$HOME/.local/bin"
path_prepend "$HOME/.neovim/bin"
path_prepend "$HOME/linuxbrew/.linuxbrew/bin"
path_prepend "$HOME/linuxbrew/.linuxbrew/sbin"