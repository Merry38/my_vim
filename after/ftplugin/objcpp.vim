" Add doxygen syntax
setlocal syntax=objcpp.doxygen

let c_no_curly_error = 1

let g:syntastic_objc_compiler = "clang++"
let g:syntastic_objc_check_header = 1

match OverLength ''

