# $OpenBSD: dot.profile,v 1.5 2018/02/02 02:29:54 yasuoka Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM

export HISTSIZE=1000
export HISTFILE=$HOME/.history
export PS1='\W \$ '
export PAGER='most'
export LC_CTYPE=UTF-8
export LANG=UTF-8

alias l='ls -aFhtlr'
alias ls='ls -F'
alias git_set_name='git config --global user.name wesley974'
alias git_set_email='git config --global user.email milo974@gmail.com'
alias git_store_credentials='git config credential.helper store'
alias h='history -60 | sort -k2 | uniq -f2 | sort -bn'
alias halt='doas halt -p'
alias reboot='doas reboot'
alias ip='curl ipinfo.io/ip'
alias lsd='ls -d */'
alias vi=vim
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias calc='perl -pe "print eval(\$_) . chr(10);"'
alias manfile='groff -man -Tascii \!* | less'
alias view='vim -R'
alias see='netstat -anf inet | grep ESTABLISHED'
alias wp='cd /var/www/wordpress'
alias ports='netstat -anf inet | grep LISTEN'
alias tb='nc termbin.com 9999'
alias gp='openssl rand -base64 48 | sed "s/[=O/\+]//g"'
alias genkey='ssh-keygen -t ed25519'
alias sudo=sl
umask 022

trap '/bin/pwd > $HOME/.last_dir' 0
cd $(cat $HOME/.last_dir)
