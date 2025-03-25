

export PATH=$PATH:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Pyenv - python versions manager
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# NVM - node versions manager
export NVM_DIR="$HOME/.nvm"
__NVM_BREW_PREFIX=$(brew --prefix nvm)
[ -s "${__NVM_BREW_PREFIX}/nvm.sh" ] && \. "${__NVM_BREW_PREFIX}/nvm.sh"
[ -s "${__NVM_BREW_PREFIX}/etc/bash_completion.d/nvm" ] && \. "${__NVM_BREW_PREFIX}/etc/bash_completion.d/nvm"
