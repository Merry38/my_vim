" Add doxygen syntax
setlocal syntax=java.doxygen

" Make DoxygenToolkit JavaDoc compatible
let g:DoxygenToolkit_briefTag_pre=""
let g:DoxygenToolkit_throwTag_pre="@exception "

" Save local javac config
let g:syntastic_java_javac_config_file_enabled = 1

setlocal wildignore+=*.class

