export EDITOR='nvim'

# ------------------------------------
#            FZF Config
# ------------------------------------
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND='ag -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Open selected file with default editor
nvf() {
  local out file key
  out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
     ${EDITOR:-nvim} "$file"
  fi
}

# cd to selected directory
cdf() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf-tmux +m) &&
  cd "$dir"
}

# git log browser
glf() {
  git log --graph --pretty=format:'%C(yellow)%s%Creset %an %C(blue)%cr%Creset %h%C(red)%d%Creset ' --numstat |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

# Bookmarks! - add full file paths to ~/.bookmarks then invoke with go command
go() {
   local dest_dir=$(cat ~/.bookmarks | sed 's/#.*//g' | sed '/^\s*$/d' | fzf-tmux )
   if [[ $dest_dir != '' ]]; then
      cd "$dest_dir"
   fi
}
export -f go > /dev/null

# Add current directory to bookmarks
bookmark () {
    echo "${PWD} # $*" >> ~/.bookmarks
}
