# Matt2ology's Dotfiles - Managed by [chezmoi](https://www.chezmoi.io/install/)

## Setup

[chezmoi dotfile management](https://www.jacobbolda.com/chezmoi-dotfile-management)

[ZSH Prompt Generator](https://zsh-prompt-generator.site/)

### Linux/MacOS/WSL - Initial Setup

1. Install [Homebrew](https://brew.sh/)
   1. Run these two commands in your terminal to add Homebrew to your PATH:
      1. `echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/matt2ology/.bash_profile`
      2. `eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"`
   2. Install Homebrew's dependencies if you have sudo access: `sudo apt-get install build-essential`
   3. We recommend that you install GCC: `brew install gcc`
2. Install chezmoi: `brew install chezmoi`

## TODO

- [ ] make a TODO task in Chizmoi Github readme script to see if dependencies are installed
Paste that in a macOS Terminal or Linux shell prompt.

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

```txt
==> The following new directories will be created:
/opt/homebrew/bin
/opt/homebrew/etc
/opt/homebrew/include
/opt/homebrew/lib
/opt/homebrew/sbin
/opt/homebrew/share
/opt/homebrew/var
/opt/homebrew/opt
/opt/homebrew/share/zsh
/opt/homebrew/share/zsh/site-functions
/opt/homebrew/var/homebrew
/opt/homebrew/var/homebrew/linked
/opt/homebrew/Cellar
/opt/homebrew/Caskroom
/opt/homebrew/Frameworks
```
