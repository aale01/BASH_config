# ~/.bashrc.d/aliases.sh

alias ls='ls --color=auto'
alias ll='ls -lAhs'
alias la='ls -A'
alias l='ls -CF'
#alias lc='ls | column'

alias grep='grep --color=auto'

alias vim='nvim'
alias vimswap='cd ~/.local/state/nvim/swap && ls -lAhs'
alias vimconf='cd ~/.config/nvim && vim'
alias bashconf='vim ~/.bashrc'
alias bashaliases='vim ~/.bash_aliases'
alias cursus='cd ~/Desktop/42Locale/Cursus/.'
#alias gp='git push'

alias freecache="sudo sync; sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'; echo 'cache deleted'"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

