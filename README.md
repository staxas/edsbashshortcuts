Edwin's aliases and functions
--------------------------------------
Show this file

med : manual of Edwin

--------------------------------------
Basic

c : clear screen

h : list history

gh [pattern] : grep history, search in command history

gp [pattern] : grep ps aux, search in running processes

gl [pattern] : grep lsof, search in open files

lp [port #] : lsof ports, list processes on port

cf [optional file mask] : count files in current directory

cft [optional file mask] : count files in current and all subdirectories

dut : get total disk usage in current directory

dud : get total disk usage in subdirectories of current directorydf : hard disk file space usage

ff [file pattern] [case sensitivity]: fast find with error filter, if [case sensitivity] is empty, search case insensitive

cpv [source] [target] : copy with progress bar

(note: this uses rsync, so sourcedir/ will copy directory contents and sourcedir without trailing slash will copy directory)

rmf / rf [file pattern] : force remove recursively

cd [directory name] : push to directory stack and go there

p / p2 / p3 / p4 / p5 : pop 1/2/3/4/5 directory/directories

d : list directory stack

dc : clear directory stack

k9 [process id] : force kill process

wh : what happened? list system log

kt [file] : open file with kate

gv [file] : open file with gwenview

dp : open dolphin in current directory

co : open codium

co. : open codium in current directory

rnb : open rednotebook

lsd : list drives starting with /dev/sd*

lsblk / lsb: detailed lsblk with device UUIDs

rst : reset output

hm : go to home directory and clear screen

--------------------------------------
List files

ll / la : detailed ls

l. : ls hidden files

ll. : ls hidden files detailed

ld : list directories

lld : list directories detailed

ld. : list hidden directories

lld. : list hidden directories detailed

--------------------------------------
Go to directory (all changes are pushed to stack)

cd. / cd.. / .. : 'cd ..'

.2 : 'cd ../..'

.3 : 'cd ../../..'

.4 : 'cd ../../../..'

.5 : 'cd ../../../../..'

~ : 'cd ~', go to home root directory

-- : 'cd -', go to previous directory

--------------------------------------
Go to directory and list files (all changes are pushed to stack)

cl : go to home directory and list contents

cl [target directory] : go to target directory and list contents

cl [.., .2-.5] : go to higher directory and list contents

cl. / cl.. : 'cl ..'

cl2 : 'cl .2'

cl3 : 'cl .3'

cl4 : 'cl .4'

cl5 : 'cl .5'

--------------------------------------
Edit and reload bash config files

als : list .bash_aliases

eba : edit and source .bash_aliases

ebr : edit and source .bashrc

sba : source .bash_aliases

sbr : source .bashrc

--------------------------------------
Admin commands

sss : sudo ssh

upgr : sudo apt-get update && upgrade

reboot : reboot system

shutdown : shutdown system

--------------------------------------
Upgrade via ssh

supgr [target ssh server]

--------------------------------------
sc=~/shortcuts.txt

