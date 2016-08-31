#!/bin/bash

## Colors [Foreground 3, Background 4]
#  0 black
#  1 red
#  2 green
#  3 yellow
#  4 blue
#  5 magenta
#  6 cyan
#  7 white
#  9 reset
colors=( "blk" "red" "grn" "yel" "blu" "mag" "cyn" "wht" )

## Styles
#  0 Normal Characters
#  1 Bold Characters
#  4 Underlined Characters
#  5 Blinking Characters


for (( group = -1; group < 8; group++ )); do
    echo -e "    --------------------------------------------------------------"
    if [ $group -eq -1 ]; then
        line1="DFT :  ";
        line2="    :  ";
    else
        name=${colors[group]}
        line1="$(echo $name | tr 'a-z' 'A-Z') : \033[4${group}m ";
        line2="    : \033[4${group}m ";
    fi
    for (( color = 0; color < 8; color++ )); do
        line1+="  \033[3${color}m${colors[color]}  ";
        line2+="  \033[1;3${color}m${colors[color]}  ";
    done
    line1+=" \033[39;49m :";
    line2+=" \033[0;39;49m :";
    echo -e "$line1"
    echo -e "$line2"
done
echo -e "    --------------------------------------------------------------"
