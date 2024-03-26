eval $(/opt/homebrew/bin/brew shellenv)

export PATH="$HOME/.local/bin:$PATH"

eval "$(mise activate zsh)"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
