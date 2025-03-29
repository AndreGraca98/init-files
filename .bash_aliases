# alias pip=pip3
# alias python=python3

alias ls='ls -h --color=auto -F'
alias ll='ls -l'
alias la='ls -lA'

alias ~='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
-() {
    cd -
}

alias ga='git add'
alias gc='git commit'
alias gp='git push'

# Remove a tracked file from the git repository
alias git_untrack_file='git rm --cached'
# Remove a tracked folder from the git repository
alias git_untrack_folder='git rm -r --cached'

alias cbs='cd ~/projects/claranet/cbs'
