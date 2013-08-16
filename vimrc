""" Setup/cleaning

" Pathogen Plugin manager
execute pathogen#infect()
" Remove ALL autocommands for the current group.
autocmd!

""" Settings

set nocompatible
set showcmd
set ruler
set number
set cursorline
set cursorcolumn
set shiftwidth=2
set tabstop=4
set softtabstop=2
set expandtab
set autoindent
set cindent
set hlsearch
set incsearch 
set foldmethod=syntax
syntax enable
filetype plugin indent on

" Disable arrow keys for navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Command to clear search
command C let @/ = ""
" Command to save as su
command W :execute ':silent w !sudo tee %' | :edit!

" Shortcuts for S&R
noremap ;; :s///<Left><Left>
noremap ;' :%s///g<Left><Left><Left>

" PHP folding level
let g:php_folding = 2
" C++11 syntax
let c_no_curly_error = 1

""" Plugins

"" tagbar (show function and classes)
nmap <leader>l :TagbarToggle<CR> 

"" NERDtree (show files)
nmap <leader>n :NERDTreeToggle<CR>
" Autoclose if NERDtree is the only window left open
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType")
      \ && b:NERDTreeType == "primary") | q | endif

"" Doxygen
let g:load_doxygen_syntax = 1
autocmd BufRead,BufNewFile FileType java set syntax=java.doxygen
      \ | let g:DoxygenToolkit_briefTag_pre=""
      \ | let g:DoxygenToolkit_throwTag_pre="@exception "
let g:DoxygenToolkit_authorName = "Zucchelli Maurizio"

"" Syntastic config
nmap <leader>s :SyntasticCheck<CR>
nmap <leader>e :call ErrorsToggle()<CR>

let g:syntastic_c_compiler = "clang"
let g:syntastic_cpp_compiler = "clang++"
let g:syntastic_cpp_check_header = 1
"let g:syntastic_cpp_auto_refresh_includes = 1

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

let g:syntastic_java_javac_config_file_enabled = 1

"" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1


""" Colors

set background=dark
"colorscheme elflord
"colorscheme github
colorscheme molokai
"colorscheme solarized      " solarized is set in gvimrc

" Highlight characters after the 80th
set colorcolumn=80
autocmd BufRead,BufNewFile *  " autocmd because gets overwritten by colorscheme
      \ highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
      \ | match OverLength /\%>80v.\+/

