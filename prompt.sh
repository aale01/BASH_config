# ~/.bashrc.d/prompt.sh

# colori
GREEN='\[\e[1;32m\]'
BLUE='\[\e[1;34m\]'
LIGHT_BLUE='\[\e[1;36m\]'
WHITE='\[\e[1;37m\]'
RESET='\[\e[0m\]'

git_branch() {
    local b
    b=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    [[ -n "$b" ]] && printf " (%s)" "$b"
}

PS1="${GREEN}\u@\h ${BLUE}\W${LIGHT_BLUE}\$(git_branch) ${RESET}➤ "

# in alternativa usare PROMPT_COMMAND oppure comandi come 'starship'
