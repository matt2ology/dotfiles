##############################################################################
# Add additional environment variables paths
# Script uses functions `path_prepend` and `path_append` located in 
# .shell/functions.sh
##############################################################################
path_prepend "/usr/local/bin"
path_prepend "/usr/local/sbin"
path_prepend "$HOME/.local/bin"
# brew install neovim
path_prepend "$HOME/.neovim/bin"
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
path_prepend "$HOME/linuxbrew/.linuxbrew/bin"
path_prepend "$HOME/linuxbrew/.linuxbrew/sbin"
# Brew install chezmoi
path_append "$HOME/linuxbrew/.linuxbrew/Cellar/chezmoi/2.20.0/bin"
path_append "$HOME/linuxbrew/.linuxbrew/Cellar/neovim/0.7.2_1/bin"
path_append "$HOME/linuxbrew/.linuxbrew/opt/chezmoi/bin"
# Brew install chezmoi
path_append "$HOME/linuxbrew/.linuxbrew/Homebrew/bin"