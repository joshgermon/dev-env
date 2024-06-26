[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Add local scripts to path
export PATH=$HOME/.local/scripts/:$PATH

# Open tmux session by default
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# tmux projects
bindkey -s ^f "tmux-sessionizer\n"

. "$HOME/.cargo/env"
