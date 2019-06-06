# function fish_prompt
#     echo -n '> '
# end

function fish_prompt --description 'Write out the prompt'
    set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '>'
    end

    # echo -n -s "$USER" @ (prompt_hostname) ' ' (set_color $color_cwd) (prompt_pwd) (set_color normal) "$suffix "
    echo -n -s (set_color $color_cwd) (prompt_pwd) (set_color normal) "$suffix "
end

set fish_greeting ''

alias c="clear"
alias l="ll -a"
function nv
  bash -c "SHELL=/bin/bash nvim $argv"
end
alias vim="nvim"

alias nci="npm -s ci"
alias ni="npm -s install"
alias ns="npm start"
alias nr="npm run"

alias y="yarn"
alias ys="yarn start"

alias r="bin/rails"
alias rt="env HIDE_EXAMPLES=true bin/rails test"
alias be="bundle exec"

alias t="tree -CI 'node_modules|dist'"
alias tree="tree -C"

alias headers="curl -I -s -X GET"

alias rg="rg -S"

alias cr="cargo run"
alias ct="cargo test all"
alias wcr="watchexec --restart 'cargo run'"
alias wct="watchexec --restart 'cargo test --all'"

alias cdvim='cd ~/.vim'

alias pss='ps aux | rg'


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


function fork
  set args (string split "/" $argv[1])
  set user $args[1]
  set repo $args[2]

  git clone git@github.com:flybayer/$repo.git
  cd $repo
  git remote add upstream git@github.com:$argv[1].git
  git fetch --all
end

function gpu
   set branch_name (git branch --color=never | grep \* | cut -d ' ' -f2)
   gp -u origin $branch_name
end

function gpd
  gp && gp origin :$argv[1] && gb -d $argv[1]
end

function gmpd
  gm $argv[1] && gp && gp origin :$argv[1] && gb -d $argv[1]
end


set -x EDITOR nvim
set -x FZF_LEGACY_KEYBINDINGS 1
set -x FZF_TMUX 1
set -gx FZF_DEFAULT_COMMAND 'ag --ignore flow-typed -g ""'
set -gx FZF_FIND_FILE_COMMAND "$FZF_DEFAULT_COMMAND"

set -gx N_PREFIX $HOME/n

set -x PGDATA /usr/local/var/postgres/
set -e PREFIX # Fix React-native metro bundler
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x DISABLE_SPRING 1

# qt@5.5 in path because it's needed by capybara-webkit which is used by bullettrain
set -x fish_user_paths $ANDROID_HOME/emulator $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools $HOME/.fastlane/bin $fish_user_paths $N_PREFIX/bin $HOME/.rbenv/bin /usr/local/opt/qt@5.5/bin

status --is-interactive; and source (rbenv init -|psub)

function __direnv_export_eval --on-event fish_prompt;
        eval (direnv hook fish);
end

