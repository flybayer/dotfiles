alias c="clear"
alias ping="ping -o"

alias gs="git status"
alias gcam='git commit -am'
alias gmn='git merge --no-ff'
alias gbd="git branch -d"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%an>%Creset %Cgreen(%cr)%C(yellow)%d%Creset%n%s'"
alias gu="git pull --rebase"

#Copy latest git commit
alias cgc='git log -1 --pretty=format:%H | xsel -b'
#Copy latest git commit message
alias cgm='git log -1 --pretty=format:%B | xsel -b'

alias cdvim='cd ~/.vim'

alias nv="nvim"
alias e="ember"
alias eg="ember g"

alias bu="bundle"
alias bo="bower"
alias ng="noglob"

#quickly jump to a project folder in ~/c/
go() { cd ~/c/$1; }
    _go() { _files -W ~/c -/; }
        compdef _go go
