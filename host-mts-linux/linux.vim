" Setup for gist-vim
let g:github_user = "flybayer"

set notitle

" Set tab width for specific file types
autocmd BufRead,BufNewFile *.cpp setlocal shiftwidth=4 tabstop=4
autocmd BufRead,BufNewFile *.h   setlocal shiftwidth=4 tabstop=4
autocmd BufRead,BufNewFile *.bb  setlocal shiftwidth=4 tabstop=4
