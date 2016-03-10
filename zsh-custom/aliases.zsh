alias c="clear"

alias gs="git status"
alias gcam='git commit -am'
alias gmn='git merge --no-ff'
alias gbd="git branch -d"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %C(bold blue)<%an>%Creset %Cgreen(%cr)%C(yellow)%d%Creset%n%s'"
alias gu="git pull --rebase"
#Only see changed words, not lines
alias gd="git diff --color-words"

#Copy latest git commit
alias cgc='git log -1 --pretty=format:%H | xsel -b'
#Copy latest git commit message
alias cgm='git log -1 --pretty=format:%B | xsel -b'

alias cdvim='cd ~/.vim'

alias vi="nvim"
alias vim="nvim"
alias nv="nvim"
alias e="ember"
alias eg="ember g"

alias bu="bundle"
alias bo="bower"
alias ng="noglob"

alias ssh.1="ssh admin@192.168.2.1"
alias ssh.2="ssh admin@192.168.2.2"
alias ssh.3="ssh admin@192.168.2.3"
alias ssh.4="ssh admin@192.168.2.4"
alias ssh.5="ssh admin@192.168.2.5"
alias ssh.6="ssh admin@192.168.2.6"
alias ssh.7="ssh admin@192.168.2.7"
alias ssh.8="ssh admin@192.168.2.8"
alias ssh.9="ssh admin@192.168.2.9"
alias sshj="ssh bbayer@jeff.dc.multitech.prv"

#quickly jump to a project folder in ~/c/
go() { cd ~/c/$1; }
    _go() { _files -W ~/c -/; }
        compdef _go go
