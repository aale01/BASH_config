# ~/.bashrc.d/prompt.sh

# colori
# colori per PS1 (con \[ \])
GREEN='\[\e[1;32m\]'
LIGHT_BLUE='\[\e[1;36m\]'
RESET='\[\e[0m\]'

# colori per uso dentro funzioni/printf (senza \[ \])
_BLUE='\001\e[1;34m\002'
_RED='\001\e[1;31m\002'
_RESET='\001\e[0m\002'

git_branch() {
    local b
    b=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    [[ -n "$b" ]] && printf "${_BLUE}git:(${_RED}%s${_BLUE})${_RESET} " "$b"
}

PS1="${GREEN}\u@\h ${LIGHT_BLUE}\W \$(git_branch)${RESET}➤ "

# in alternativa usare PROMPT_COMMAND oppure comandi come 'starship'
