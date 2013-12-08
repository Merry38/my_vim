
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.in       set filetype=otter
  au! BufRead,BufNewFile *.pddl     set filetype=lisp
augroup END
