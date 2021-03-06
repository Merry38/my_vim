" copied from https://github.com/teranex/dotvim/blob/master/after/indent/php.vim
" original at https://github.com/tobyS/toby.vim/blob/master/after/indent/php.vim
"
"
" !! THIS FILE NEEDS TO BE IN THE "after" DIRECTORY BECAUSE IT IS OVERRIDDEN BY
" !! SYSTEM DEFAULT FILES OTHERWISE

" Disabling language based indentation rules
" The ending space is neccessary
setlocal indentexpr=

" Enable indentation copy and smart indentation after c-style blocks instead
setlocal autoindent
setlocal nosmartindent
" the original file used smartindent. However this doesn't play nice with the
" smartinput plugin which automatically inserts a closing }. It has too much
" indent in that case. With the cindent setting this seems to work perfectly
setlocal cindent

" Unfortunately the default indent file for PHP sets the formatoption ``w``,
" which adds a trailing whitespace after every line during rewrap, to indicate
" the continuation of a paragraph. Who the fuck came up with this idea?. We
" need to disable it here, as no other place has the priority to disable it :(
setlocal formatoptions-=w
