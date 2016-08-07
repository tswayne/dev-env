# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


if [ -f ~/.bash_local ]; then
      . ~/.bash_local   # --> Read /etc/bashrc, if present.
fi

# Comands
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias hist="history | grep "
alias update-env="cd ~/dev-env; git pull origin master";
# git
alias gc="git add -A; git commit -m"
alias gpm="git checkout master; git pull origin master;"
alias gs="git status;"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

