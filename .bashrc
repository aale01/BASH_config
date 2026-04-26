# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac
# exit se non interattiva
#[[ $- != *i* ]] && return

# base
source ~/.bashrc.d/env.sh
source ~/.bashrc.d/options.sh
source ~/.bashrc.d/aliases.sh
#source ~/.bashrc.d/completion.sh
source ~/.bashrc.d/prompt.sh
source ~/.bashrc.d/keybindings.sh
source ~/.bashrc.d/functions.sh

## enable programmable completion features (you don't need to enable
## this, if it's already enabled in /etc/bash.bashrc and /etc/profile
## sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
