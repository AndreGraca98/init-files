# \d \t - date and time
# \e[92;1m - bold green formatting
# \h - 1st part of hostname
# \u - username
# \e[0m - clean formatting
# \w - current working directory
export PS1="\d \t \e[92;1m\h@\u\e[0m:\w \n$ "


set-window-title() {
    echo -en "\033]0;$(pwd | sed -e "s;^$HOME;~;")\a"
}

if [[ "$PROMPT_COMMAND" ]]; then
    export PROMPT_COMMAND="$PROMPT_COMMAND;set-window-title"
else
    export PROMPT_COMMAND=set-window-title
fi


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
