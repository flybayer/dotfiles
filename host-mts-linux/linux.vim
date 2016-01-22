" Setup for gist-vim
let g:github_user = "flybayer"


" Set tab width for specific file types
autocmd BufRead,BufNewFile *.cpp setlocal shiftwidth=4 tabstop=4
autocmd BufRead,BufNewFile *.js  setlocal shiftwidth=4 tabstop=4
autocmd BufRead,BufNewFile *.bb  setlocal shiftwidth=4 tabstop=4
