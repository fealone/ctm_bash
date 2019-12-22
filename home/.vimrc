"Initialize
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
let $PATH = "~/.pyenv/shims:".$PATH

"Plugins initilize
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

"jedi-vim install
NeoBundle 'davidhalter/jedi-vim'

NeoBundle 'scrooloose/syntastic'

NeoBundleLazy "lambdalisue/vim-pyenv", {
      \ "depends": ['davidhalter/jedi-vim'],
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }}

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

"jedi-vim
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 0
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_select_first = 0

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_pylint_post_args="--max-line-length=120"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

set syntax=markdown
au BufRead,BufNewFile *.md set filetype=markdown

noremap <C-l> :SyntasticCheck <CR>
