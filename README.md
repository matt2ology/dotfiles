# Matt2ology's Dotfiles - Managed by [chezmoi](https://www.chezmoi.io/install/)

## Setup

### Linux/MacOS/WSL - Initial Setup

1. Install [Homebrew](https://brew.sh/)
	1. Run these two commands in your terminal to add Homebrew to your PATH:
		`echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/matt2ology/.bash_profile`

    		`eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"`

	2. Install Homebrew's dependencies if you have sudo access:
		`sudo apt-get install build-essential`
	3. We recommend that you install GCC:
		`brew install gcc`
2. Install chezmoi: `brew install chezmoi`
