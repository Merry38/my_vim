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
set shiftwidth=2
set tabstop=4
set softtabstop=2
set expandtab
set autoindent
set cindent
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

command C let @/ = ""
" Command to save as su
command W :execute ':silent w !sudo tee %' | :edit!

" Shortcuts for S&R
noremap ;; :s///<Left><Left>
noremap ;' :%s///g<Left><Left><Left>

" tagbar (show function and classes)
nmap <leader>l :TagbarToggle<CR> 

" NERDtree (show files)
nmap <leader>n :NERDTreeToggle<CR>
" Autoclose if NERDtree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
      \ && b:NERDTreeType == "primary") | q | endif

" PHP folding level
let g:php_folding = 2
" C++11 syntax
let c_no_curly_error = 1

" Doxygen
let g:load_doxygen_syntax = 1
let g:DoxygenToolkit_authorName = "Zucchelli Maurizio"

"" Syntastic config
nmap <leader>s :SyntasticCheck<CR>
nmap <leader>e :call ErrorsToggle()<CR>

let g:syntastic_c_compiler = 'clang'
let g:syntastic_cpp_compiler = 'clang++'
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

" Highlight characters after the 80th
set colorcolumn=80
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%>79v.\+/

