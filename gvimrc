""" Setup/cleaning

" Pathogen Plug-in Manager
execute pathogen#infect()
" Remove ALL auto commands for the current group.
autocmd!

""" Settings
set nocompatible

set showcmd
set ruler
set number
set cursorline
" set cursorcolumn
set hlsearch
set incsearch 

set shiftwidth=4
set tabstop=4
set softtabstop=4
" set expandtab
set foldmethod=syntax
source ~/.vim/indent.vim

syntax enable
filetype plugin indent on

" Disable arrow keys for navigation
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
set mouse=a

" Command to clear search
command! C let @/ = ""
" Command to save as su
command! W :execute ':silent w !sudo tee %' | :edit!

" Shortcuts for S&R
noremap ;; :s///<Left><Left>
noremap ;' :%s///g<Left><Left><Left>

""" Plug-ins
let mapleader="ù"

"" tagbar (show function and classes)
nmap <leader>l :TagbarToggle<CR> 

"" NERDtree (show files)
nmap <leader>n :NERDTreeToggle<CR>
" Auto close if NERDtree is the only window left open
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType")
      \ && b:NERDTreeType == "primary") | q | endif

"" Doxygen
let g:load_doxygen_syntax = 1
let g:DoxygenToolkit_authorName = "Riccardo Orizio"

"" Syntastic
nmap <leader>s :SyntasticCheck<CR>
nmap <leader>e :call ErrorsToggle()<CR>

let g:errors_is_open = 0
function! ErrorsToggle()
  if g:errors_is_open
    lcl
    let g:errors_is_open = 0
    execute g:errors_return_to_window . "wincmd w"
  else
    let g:errors_return_to_window = winnr()
    Errors
    let g:errors_is_open = 1
  endif
endfunction

"" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_enable_auto_select = 1

""" Colors
set background=dark
colorscheme solarized

""" Font
set guifont=Monospace\ 9
