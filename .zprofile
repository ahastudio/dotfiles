eval $(/opt/homebrew/bin/brew shellenv)

export PATH="$HOME/.local/bin:$PATH"

eval "$(fnm env)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/qt@5/lib:$LDFLAFS"
export CPPFLAGS="-I/opt/homebrew/opt/qt@5/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/qt@5/lib/pkgconfig:$PKG_CONFIG_PATH"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME=${SDKMAN_CANDIDATES_DIR}/java/current/
