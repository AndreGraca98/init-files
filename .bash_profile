# silence "The default interactive shell is now zsh." warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# don't auto update unrelated pckgs when installing new pckgs
export HOMEBREW_NO_AUTO_UPDATE=1
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# custom tools bin
mkdir -p ~/bin
[ -d ~/bin ] && export PATH=$PATH:$HOME/bin
# installed tools bin
[ -d ~/.local/bin ] && export PATH=$PATH:$HOME/.local/bin

# terminal cfg
[ -r ~/.bash_terminal_cfg ] && source ~/.bash_terminal_cfg

# other
[ -r ~/.profile ] && source ~/.profile
[ -r ~/.bashrc ] && source ~/.bashrc
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ -r ~/.bash_completion ] && source ~/.bash_completion
