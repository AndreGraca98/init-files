eval "$(/opt/homebrew/bin/brew shellenv)"

mkdir -p ~/bin
[ -d ~/bin ] && export PATH=$PATH:$HOME/bin

[ -r ~/.profile ] && source ~/.profile
[ -r ~/.bashrc ] && source ~/.bashrc
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ -r ~/.bash_completion ] && source ~/.bash_completion

