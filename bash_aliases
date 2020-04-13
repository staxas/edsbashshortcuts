# Edwin's aliases and functions
#
#--------------------------------------
# Basic

alias msc='less $sc'
alias c='clear'
alias h='history'
alias grep='grep --color=auto'
alias gp='ps aux | grep '
alias gl='lsof | grep '
alias dut='du -ch | /bin/grep total | awk '"'"'{print $1}\'"'"''
alias dud='du -d 1 -h'
alias df='df -h | /bin/grep -e Filesystem -e /dev/sd'
#--------------------------------------
# list files

alias ls='ls --color=auto'
alias ll='ls -lah '
alias la='ll '
alias l.='ls -d .* '
alias ll.='ls -dlah .* '

#--------------------------------------
# switch to directory

alias cd..='cd ..'
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias ~='cd ~'
alias -- -='cd -'

#--------------------------------------
# list processes on port

lp() {
    lsof -i:$1
}

#--------------------------------------
# go to directory and list files

cl() {
    DIR="$*";
    # if no DIR given, go home
    if [ $# -lt 1 ]; then 
        DIR=$HOME;
    elif [ $DIR == ".2" ]; then
        DIR="../..";
    elif [ $DIR == ".3" ]; then
        DIR="../../..";
    elif [ $DIR == ".4" ]; then 
        DIR="../../../..";
    elif [ $DIR == ".5" ]; then
        DIR="../../../../..";
    fi;

    builtin cd "${DIR}" && ls
}
alias cl.="cl .."
alias cl2="cl .2"
alias cl3="cl .3"
alias cl4="cl .4"
alias cl5="cl .5"

#--------------------------------------
# grep history

gh() {
    history | grep "$*"
}

#--------------------------------------
# admin commands

alias upgr="sudo apt-get update && sudo apt-get upgrade"
alias reboot="sudo /sbin/reboot"

#--------------------------------------
# copy with progress bar

cpv() {
    rsync -a --info=progress2 "${1}" "${2}"
}

#--------------------------------------
# shorthand find with error filter

ff() {
    find . -iname $1 2>&1 | grep -v -e "Permission denied" -e "Invalid argument"
}

#--------------------------------------
# edit and reload bash config files

alias als='less ~/.bash_aliases'
alias eba='nano ~/.bash_aliases && source ~/.bash_aliases'
alias ebr='nano ~/.bashrc && source ~/.bashrc'
alias sba='source ~/.bash_aliases'
alias sbr='source ~/.bashrc'

#--------------------------------------
# go to directories

alias cdm='cd "$myd"'
alias cdb='cd $bin'

#--------------------------------------
# upgrade via ssh

supgr() {
    ssh $1 -t bash -ci upgr;
}

#--------------------------------------
# count files

cf () {
  if [[ -z "$1" ]]; then
    find . -maxdepth 1 -type f -printf '.' | wc -c;     
  else
    find . -maxdepth 1 -type f -iname $1 -printf '.' | wc -c;
  fi;
}

cft() {
  if [[ -z "$1" ]]; then
    find . -type f -printf '.' | wc -c;
  else
    find . -type f -iname "$1" -printf '.' | wc -c;
  fi
}
