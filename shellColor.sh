#!/bin/zsh

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


for (( group = 0; group < 9; group++ )); do
    echo -e "    --------------------------------------------------------------"
    if [ $group -eq 0 ]; then
        line1="DFT :  ";
        line2="    :  ";
    else
        name=${colors[group]}
        line1="$(echo $name | tr 'a-z' 'A-Z') : \e[4$(( group - 1 ))m ";
        line2="    : \e[4$(( group - 1 ))m ";
    fi
    for (( color = 1; color < 9; color++ )); do
        line1+="  \e[3$(( color - 1 ))m${colors[color]}  ";
        line2+="  \e[1;3$(( color - 1 ))m${colors[color]}  ";
    done
    line1+=" \e[39;49m :";
    line2+=" \e[0;39;49m :";
    echo -e "$line1"
    echo -e "$line2"
done
echo -e "    --------------------------------------------------------------"
