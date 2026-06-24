# ~/.bashrc.d/prompt.sh

# colori
GREEN='\[\e[1;32m\]'
BLUE='\[\e[1;36m\]'
LIGHT_BLUE='\e[1;34m'
RED='\e[1;31m'
WHITE='\[\e[1;37m\]'
RESET='\[\e[0m\]'

git_branch() {
    local b
    b=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    [[ -n "$b" ]] && printf "${LIGHT_BLUE}git:(${RED}%s${LIGHT_BLUE}) " "$b"
}

PS1="${GREEN}\u@\h ${BLUE}\W \$(git_branch)${RESET}➤ "

# in alternativa usare PROMPT_COMMAND oppure comandi come 'starship'
