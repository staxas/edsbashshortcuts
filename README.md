Edwin's aliases and functions
--------------------------------------
Show this file

msc : manual of shortcuts

--------------------------------------
Basic

c : clear screen

h : list history

gh [pattern] : grep history, search in command history

gp [pattern] : grep ps aux, search in running processes

gl [pattern] : grep lsof, search in open files

lp [port #] : lsof ports, list processes on port

cf [optional file mask] : count files

dut : get total disk usage in current directory

dud : get total disk usage in subdirectories of current directory

df : hard disk file space usage

ff [file pattern] : fast find with error filter

cpv [source] [target] : copy with progress bar

(note: this uses rsync, so sourcedir/ will copy directory contents and sourcedir without trailing slash will copy directory)

--------------------------------------
List files

ll : detailed ls

la : same as ll

l. : ls hidden files

ll. : ls hidden files detailed

--------------------------------------
Go to directory 

cd.. : 'cd ..'

.. : 'cd ..'

.2 : 'cd ../..'

.3 : 'cd ../../..'

.4 : 'cd ../../../..'

.5 : 'cd ../../../../..'

~ : 'cd ~', go to home root directory

[hyphen] : 'cd -', go to previous directory

--------------------------------------
Go to directory and list files

cl : go to home directory and list contents

cl [target directory] : go to target directory and list contents

cl [.., .2-.5] : go to higher directory and list contents

cl. : 'cl ..'

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

upgr : sudo apt-get update && upgrade

reboot : reboot

--------------------------------------
Upgrade via ssh

supgr [target ssh server]

--------------------------------------

Shortcut variables

sc=~/shortcuts.txt


