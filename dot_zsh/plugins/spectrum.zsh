#! /bin/zsh
# A script to make using 256 colors in zsh less painful.
# P.C. Shyamshankar <sykora@lucentbeing.com>
# Copied from http://github.com/sykora/etc/blob/master/zsh/functions/spectrum/

# Associative arrays for effects, foreground and background colors are created
typeset -Ag FX FG BG

FX=( # Effects (bold, underline, etc.) are stored in the FX array.
    reset     "%{\e[00m%}" # Reset all attributes (return to normal mode).
    bold      "%{\e[01m%}" no-bold      "%{\e[22m%}" # Bold on/off (intensity).
    italic    "%{\e[03m%}" no-italic    "%{\e[23m%}" # Italic on/off. (Not widely supported.)
    underline "%{\e[04m%}" no-underline "%{\e[24m%}" # Underline on/off. (Not widely supported.)
    blink     "%{\e[05m%}" no-blink     "%{\e[25m%}" # Blink on/off. (Not widely supported.)
    reverse   "%{\e[07m%}" no-reverse   "%{\e[27m%}" # Reverse video on/off. (Not widely supported.)
)

# The colors are stored as a 3-digit number padded with zeros.
# For example, the color 1 is stored as 001.
# The color 0 is stored as 000 because it is the default color.
# The color 10 is stored as 010.
# The color 100 is stored as 100.
# The color 255 is stored as 255.
# The colors are stored as a 3-digit number padded with zeros.
for color in {000..255}; do
    FG[$color]="%{\e[38;5;${color}m%}" # Foreground colors are stored in the FG array.
    BG[$color]="%{\e[48;5;${color}m%}" # Background colors are stored in the BG array.
done

# Show all 256 colors with color number and name (if available) in a grid. 
function spectrum() {
    local cols=4 # Number of columns in the grid of colors (default: 4)
    # If the first argument is not empty,
    # use it as the number of columns in the grid of colors. 
    if [[ "${1}" != "" ]]; then
        cols=${1}
    fi
    local ctr=1 # Counter for the number of colors printed in a row (default: 1)
    for code in {000..255}; do # For each color code from 000 to 255 (inclusive)
        print -P -n -- "$code: %F{$code}Test%f" # Print the color code and a test string in the color
        # If the number of colors printed in a row is equal to the number of
        # columns in the grid of colors (default: 4)
        if [[ "$(expr ${ctr} % ${cols})" == "0" ]]; then
            print # newline after every ${cols} columns of colors
        else
            print -n -- " " # gap between columns of colors
        fi
        # Increment the counter for the number of colors printed in a row (default: 1)
        ctr=$(expr ${ctr} + 1)
    done
    print # newline at the end of the last line of colors (if any)
}