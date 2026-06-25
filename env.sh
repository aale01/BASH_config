# ~/.bashrc.d/env.sh

# PATH pulito (evita duplicati)
add_to_path() {
    [[ ":$PATH:" != *":$1:"* ]] && PATH="$1:$PATH"
}

add_to_path "/opt/nvim-linux-x86_64/bin"
add_to_path "$HOME/.local/bin"
add_to_path "$HOME/scripts"
add_to_path "$HOME/.venv/bin"
add_to_path "$HOME/.spicetify"
add_to_path "$HOME/local/node-24/bin"

export PATH
