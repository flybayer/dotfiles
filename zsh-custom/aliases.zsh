alias c="clear"
alias ping="ping -o"

alias gbd="git branch -d"
alias gs="git status"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%an>%Creset %Cgreen(%cr)%C(yellow)%d%Creset%n%s'"
alias gu="git pull"

alias nv="nvim"
alias e="ember"
alias eg="ember g"

alias b="bundle"
alias ng="noglob"

#quickly jump to a project folder in ~/c/
go() { cd ~/c/$1; }
    _go() { _files -W ~/c -/; }
        compdef _go go
