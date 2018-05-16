call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'junegunn/limelight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'chrisbra/Colorizer'
Plug 'scrooloose/nerdtree'
call plug#end()

syntax on
filetype plugin indent on

"Make jj do ESC"
inoremap jj <Esc>
inoremap <M-j> j

"Insert newline below"
map <Enter> o<Esc>
inoremap öa \
let mapleader = " "

noremap <Leader>s :update<CR>
noremap <Leader>ss :update<CR>:quit<CR>
noremap <Leader>q :quit!<CR>
noremap <Leader>y "+y
noremap <Leader>yy "+yy
noremap <Leader>Y :%y+<CR>
noremap <Leader>d "+d
noremap <Leader>dd "+dd
noremap <Leader>D :%D+<CR>
noremap <Leader>p "+p
noremap <Leader>P "+P
noremap <Leader>e :e!<CR>
let g:limelight_conceal_ctermfg = '240'
let g:pencil#wrapModeDefault = 'soft'

set expandtab
set tabstop=4
set number relativenumber
" set cursorline
set encoding=utf-8
set fileencoding=utf-8

map <F8> :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode = "l"
" let g:NERDTreeMapPreview = "<F3>"
au vimenter * if !argc() | NERDTree | endif
