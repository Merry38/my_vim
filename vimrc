" Pathogen Plugin manager
execute pathogen#infect()

"colorscheme elflord
"colorscheme github
colorscheme molokai
set nocompatible
set showcmd
set ruler
set number
set cursorline
set cursorcolumn
set shiftwidth=4
set tabstop=4
set autoindent
set cindent
set colorcolumn=80
set foldmethod=syntax
set hlsearch
set incsearch 
syntax enable
filetype plugin indent on

" Disable arrow keys for navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Command to clear search
command C let @/=""
" shortcuts for S&R
noremap ;; :s:::<Left><Left>
" PHP folding level
let g:php_folding = 2
" Command-T (show function and classes)
nmap <leader>l :TagbarToggle<CR> 
