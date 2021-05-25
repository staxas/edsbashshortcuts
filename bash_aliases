# Edwin's aliases and functions
#
#--------------------------------------
# Basic

alias med='less $sc'
alias c='clear'
alias h='history'
alias grep='grep --color=auto'
alias gp='ps aux | grep '
alias gl='lsof | grep '
# DU Total
alias dut='du -ch | /bin/grep total | awk '"'"'{print $1}\'"'"''
# DU current Directory
alias dud='du -d 1 -h'
alias df='df -h | /bin/grep -e Filesystem -e /dev/sd -e /dev/nvme'
alias rmf='rm -rf'
alias rf='rm -rf'
# HoMe
alias hm='~ && c'
cd() {
  pushd "$*" >/dev/null
}
alias p='popd >/dev/null' 
alias p2='popd >/dev/null && popd >/dev/null'
alias p3='popd >/dev/null && popd >/dev/null && popd >/dev/null'
alias p4='popd >/dev/null && popd >/dev/null && popd >/dev/null && popd >/dev/null'
alias p5='popd >/dev/null && popd >/dev/null && popd >/dev/null && popd >/dev/null && popd >/dev/null'
alias d='dirs -v -l'
alias dc='dirs -c'
alias k9='kill -9'
alias eds='gpg -d /home/edwin/Documents/Eds_Documents/Officials/Officieel\ archief\ Edwin\ Rietmeijer/s3cr3ts.txt.gpg > ~/s3cr3ts.txt && nano ~/s3cr3ts.txt && gpg -e ~/s3cr3ts.txt && mv ~/s3cr3ts.txt.gpg /home/edwin/Documents/My\ Documents/Officials/Officieel\ archief\ Edwin\ Rietmeijer/s3cr3ts.txt.gpg && rm ~/s3cr3ts.txt'
alias lss='gpg -d /home/edwin/Documents/Eds_Documents/Officials/Officieel\ archief\ Edwin\ Rietmeijer/s3cr3ts.txt.gpg | less || tput reset'
alias dp='dolphin . &>/dev/null &'
alias co='/usr/bin/codium'
alias co.='/usr/bin/codium .'
kt() {
  kate $1 &>/dev/null &
}
gv() {
  gwenview $1 &>/dev/null &
}
alias rnb='rednotebook &>/dev/null &'
alias lsblk='lsblk -o "NAME,SIZE,FSTYPE,MOUNTPOINT,UUID" | grep -v loop'
alias lsd='ls /dev/sd*'
alias mnt='mount | grep --color=never /dev/sd'
alias rst='tput reset'
alias re='restartemby'
alias wh='dmesg -H`'
alias jack='qjackctl'
#--------------------------------------
# list files

alias ls='ls --color=auto'
alias ll='ls -lah '
alias la='ll '
alias l.='ls -d .* '
alias ll.='ls -dlah .* '
alias ld='ls -d */'
alias lld='ls -lhad */'
alias lld.='ls -lhad .*/'
#--------------------------------------
# switch to directory

alias cd.='cd ..'
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

    pushd "${DIR}" &>/dev/null && ls
}
alias cl.="cl .."
alias cl..="cl .."
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
alias shutdown="sudo /sbin/shutdown -h now"
sss() {
  ssh $1 -t sudo -s
}

#--------------------------------------
# copy with progress bar

cpv() {
    rsync -a --info=progress2 "${1}" "${2}"
}

#--------------------------------------
# shorthand find with error filter

ff() {
  if [[ -z $1 ]]; then
    echo "Usage: ff <file pattern> [case insensitive]"
    echo "If [case insensitive] is not empty, search is case insensitive"
  else
    if [[ -z $2 ]]; then
      find . -iname *"$1"\* 2>&1 | grep -v -e "Permission denied" -e "Invalid argument"
    else
      find . -name *"$1"\* 2>&1 | grep -v -e "Permission denied" -e "Invalid argument"
    fi
  fi
}

#--------------------------------------
# edit and reload bash config files

alias als='less ~/.bash_aliases'
alias eba='nano ~/.bash_aliases && source ~/.bash_aliases'
alias ebr='nano ~/.bashrc && source ~/.bashrc'
alias sba='source ~/.bash_aliases'
alias sbr='source ~/.bashrc'

#--------------------------------------
# ssh commands

sup() {
    ssh $1 -t bash -ci upgr;
}
srb() {
    ssh $1 'sudo /sbin/reboot'
}
ssd() {
    ssh $1 'sudo /sbin/shutdown -h now'
}

#--------------------------------------
# count files

cf () {
  if [[ -z "$1" ]]; then
    find . -maxdepth 1 -type f -not -path '*/\.*' -printf '.' | wc -c;
  else
    find . -maxdepth 1 -type f -not -path '*/\.*' -iname "$1" -printf '.' | wc -c;
  fi;
}

cft() {
  if [[ -z "$1" ]]; then
    find . -not -path '*/\.*' -type f -printf '.' | wc -c;
  else
    find . -not -path '*/\.*' -type f -iname "$1" -printf '.' | wc -c;
  fi
}

#--------------------------------------
# git commands
alias ga='git add'
alias gaa='git add .'
alias ga.='git add .'
gcm() {
  git commit -m "$*"
}
alias gft='git fetch'
alias gco='git checkout'
alias gnb='git checkout -b'
alias gps='git push'
alias gpl='git pull'
alias grs='git reset'
alias gst='git status'
alias glg='git log'
alias gss='git stash'
alias gsa='git stash apply'

