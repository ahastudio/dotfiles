eval $(/opt/homebrew/bin/brew shellenv)

export PATH="$HOME/.local/bin:$PATH"

eval "$(mise activate zsh)"

export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/qt@5/lib:$LDFLAFS"
export CPPFLAGS="-I/opt/homebrew/opt/qt@5/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/qt@5/lib/pkgconfig:$PKG_CONFIG_PATH"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
