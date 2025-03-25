# silence "The default interactive shell is now zsh." warning
export BASH_SILENCE_DEPRECATION_WARNING=1

eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# custom tools bin
mkdir -p ~/bin
[ -d ~/bin ] && export PATH=$PATH:$HOME/bin
# installed tools bin
[ -d ~/.local/bin ] && export PATH=$PATH:$HOME/.local/bin

[ -r ~/.profile ] && source ~/.profile
[ -r ~/.bashrc ] && source ~/.bashrc
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ -r ~/.bash_completion ] && source ~/.bash_completion

