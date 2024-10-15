# Si usas Oh My Zsh (recomendado)
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git docker kubectl brew)

source $ZSH/oh-my-zsh.sh

# Aliases útiles
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'

# Configuración de PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Configuración de nvm (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Configuración de pyenv (Python Version Manager)
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Configuración de Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Función para actualizar todo
update_all() {
    echo "Actualizando Homebrew..."
    brew update && brew upgrade && brew cleanup
    echo "Actualizando Oh My Zsh..."
    omz update
    echo "Actualizando npm global packages..."
    npm update -g
}

# Alias para cambiar entre configuraciones de git
alias git-personal="git config --global user.email '{{ user_email_personal.user_input }}'"
alias git-work="git config --global user.email '{{ user_email_work.user_input }}'"

# Función para mostrar la configuración actual de git
git-config-show() {
    echo "Current Git configuration:"
    git config --global user.name
    git config --global user.email
}
