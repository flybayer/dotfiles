

alias c="clear"
alias nv='nvim'
alias nr="npm run"
alias y="yarn"
alias ys="yarn start"

alias rg="rg -S"

alias cr="cargo run"
alias ct="cargo test all"
alias wcr="watchexec --restart 'cargo run'"
alias wct="watchexec --restart 'cargo test --all'"

alias cdvim='cd ~/.vim'

#Copy latest git commit
alias cgc='git log -1 --pretty=format:%H | xsel -b'
#Copy latest git commit message
alias cgm='git log -1 --pretty=format:%B | xsel -b'

alias g='git'
alias gs="git status"
#Only see changed words, not lines
alias gd="git diff --color-words"
alias gl="git log --graph --pretty=format:'%C(yellow)%s%Creset%n%an %C(blue)%cr%Creset %h%C(red)%d%Creset ' --numstat"
alias gu='git pull --rebase'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gclean='git clean -fd'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gd='git diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gm='git merge'
alias gp='git push'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias gsu='git submodule update'






function nvm
  bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

rvm default
