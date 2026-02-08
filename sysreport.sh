#!/bin/zsh

# A script to output a brief summary of system information

freespace=$(df -h / | awk 'NR==2 {print $4}')
freemem=$(free -h | awk 'NR==2 {print $4}')
date=$(date '+%Y-%m-%d')
greentext="\033[32m"
bold="\033[1m"
normal="\033[0m"


#printf  logdate '%(%Y-%m-%d)T\n' -1


echo "$bold Quick System Report:"
printf "\tKernel Release:\t%s\n" "$(uname -r)"
printf "\tShell Version:\t%s\n" $ZSH-VERSION
printf "\tRunning as :\t%s\n" "$USER"
printf "\tFree Storage:\t%s\n" "$freespace"
printf "\tFree Memory:\t%s\n" "$freemem"
printf "\tFiles in pwd:\t%s\n" "$(ls | wc -l)"

printf "\tGenerated on:\t%s\n" "$date"