call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'junegunn/limelight.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'chrisbra/Colorizer'
call plug#end()

syntax on
filetype plugin indent on

"Make jj do ESC"
inoremap jj <Esc>
inoremap <M-j> j

"Insert newline below"
map <Enter> o<Esc>

let mapleader = ","

noremap <Leader>s :update<CR>
noremap <Leader>ss :update<CR>:quit<CR>
noremap <Leader>q :quit!<CR>
noremap <Leader>c "+y
noremap <Leader>cc :%y+<CR>
noremap <Leader>p "+p
noremap <Leader>P "+P

let g:limelight_conceal_ctermfg = '240'
let g:pencil#wrapModeDefault = 'soft'

set expandtab
set tabstop=4
set number relativenumber
" set cursorline
set encoding=utf-8
set fileencoding=utf-8
