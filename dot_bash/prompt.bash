PROMPT_DIRTRIM=3 # Shorten of paths displayed in its prompts - show 3 dir above

# Reference for color and formatting
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
# https://dev.to/ifenna__/adding-colors-to-bash-scripts-48g4
# The escape sequence for specifying color codes is \e[COLORm
# <ESC>: `\e`, \033
ATTRIBUTE_RESET='\[\e[0m\]'     # Reset/Normal Text
ATTRIBUTE_BOLD='\[\e[1m\]'      # Bold text
ATTRIBUTE_FAINT='\[\e[1m\]'     # Faint text
ATTRIBUTE_ITALICS='\[\e[3m\]'   # Italic Text
ATTRIBUTE_UNDERLINE='\[\e[4m\]' # Underlined text

# Default foreground color: implementation defined (according to standard)
COLOR_DEFAULT='\[\e[39m\]'

# Set foreground color: '\[\e[30–37m\]'
COLOR_RED='\[\e[31m\]'
COLOR_GREEN='\[\e[32m\]'
COLOR_YELLOW='\[\e[33m\]'
COLOR_BLUE='\[\e[34m\]'
COLOR_MAGENTA='\[\e[35m\]'
COLOR_CYAN='\[\e[36m\]'
COLOR_GRAY='\e[38;5;246m'

machine_name() {
    if [[ -f $HOME/.name ]]; then
        cat $HOME/.name
    else
        hostname
    fi
}

# Original prompt: \\u(username)@\\h(hostname)\\w(PWD):\\$(effective UID)
#PS1="\n${ATTRIBUTE_BOLD}${COLOR_GREEN}\\u@\\h${ATTRIBUTE_RESET}:${ATTRIBUTE_BOLD}${COLOR_BLUE}\\w${ATTRIBUTE_RESET}\\$"

PS1="\n${ATTRIBUTE_BOLD}${COLOR_BLUE}#${COLOR_DEFAULT} ${ATTRIBUTE_BOLD}${COLOR_CYAN}\\u${COLOR_DEFAULT} ${ATTRIBUTE_BOLD}${COLOR_GREEN}at${COLOR_DEFAULT} ${ATTRIBUTE_BOLD}${COLOR_MAGENTA}\$(machine_name)${COLOR_DEFAULT} ${ATTRIBUTE_BOLD}${COLOR_GREEN}in${COLOR_DEFAULT} ${ATTRIBUTE_BOLD}${COLOR_YELLOW}\w${COLOR_DEFAULT}\n\$(if [ \$? -ne 0 ]; then echo \"${ATTRIBUTE_BOLD}${COLOR_RED}!${COLOR_DEFAULT} \"; fi)${COLOR_BLUE}>${COLOR_DEFAULT} "


############### Original prompt structure and color scheme ####################
# set variable identifying the chroot you work in (used in the prompt below)
# if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#    debian_chroot=$(cat /etc/debian_chroot)
# fi
# # [Bold Green]\\u(username)@\\h(hostname)[RESET]:[Bold Blue]\\w(short-PWD)[RESET]\\$(effective UID)
# # PS1='${debian_chroot:+($debian_chroot)}${ATTRIBUTE_BOLD}${COLOR_GREEN}\u@\h\${ATTRIBUTE_RESET}:${ATTRIBUTE_BOLD}${COLOR_BLUE}\w${ATTRIBUTE_RESET}\$ '
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
###############################################################################
