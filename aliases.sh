# ~/.bashrc.d/aliases.sh

# dircolors
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors &&
		eval "$(dircolors -b ~/.dircolors)" ||
		eval "$(dircolors -b)"

	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
fi

alias ll='ls -lAhs'
alias la='ls -A'
alias l='ls -CF'
#alias lc='ls | column'

alias fgrep='grep -F'
alias egrep='grep -E'

alias vim='nvim'
alias vimswap='cd ~/.local/state/nvim/swap && ls -lAhs'
alias vimconf='cd ~/.config/nvim/lua && vim'
alias bashconf='cd ~/.bashrc.d && vim'
# alias bashaliases='vim ~/.bash_aliases'
alias cursus='cd ~/Desktop/42/'
#alias gp='git push'

alias freecache="sudo sync; sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'; echo 'cache deleted'"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
