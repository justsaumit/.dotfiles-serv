## ~/.bashrc
#
#| |__   __ _ ___| |__  _ __ ___
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__
#|_.__/ \__,_|___/_| |_|_|  \___|
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\]{\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 5)\] \W\[$(tput setaf 2)\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput setaf 1)\]}\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#auto cd 
## Allows you to cd into directory merely by typing the directory name.
shopt -s autocd

#vi mode in bash (uncomment after expertise)
set -o vi

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$HOME/.local/bin"

#infinite history
HISTSIZE= HISTFILESIZE= 
#timecodes in bash history :))
#HISTTIMEFORMAT="%d/%m/%y %T "
HISTTIMEFORMAT="%F %T"
#ignore dupes
export HISTCONTROL=ignoredups:erasedups

#XDG
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# Load aliases
alias \
	v="vim" \
	sv="sudo vim" \
	r="ranger" \
	ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'\
	sr="sudo ranger" \
	space="ncdu" \
	h="cat $HISTFILE|fzf|xclip -sel c" \
	sha="shasum -a 256" \
	untar="tar -zxvf" \
	untar2="tar -xvf" \
	cp="cp -iv" \
	mv="mv -iv" \
	mkd="mkdir -pv" \
	myip="curl ipinfo.io/ip && echo """ \
	rm="trash -v" \
	listdel="trash-list" \
	restore="trash-restore" \
	empty="trash-empty" \
	sitedir="cd /var/www" \	
	gitdir="cd /var/git"
#git
alias \
	g1="git add ." \
	g2="git commit -S -m" \
	g3="git push origin HEAD --force" \
	gs="git status" \
	gd="git diff --staged" \
	glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
