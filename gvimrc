" Colorscheme
colorscheme solarized

" Workaround for solarized
highlight! link SignColumn NonText

" Font
if has("unix")
  let s:uname = system("echo -n \"$(uname)\"")
  if !v:shell_error && s:uname == "Linux"
    set guifont=Ubuntu\ Mono\ 14
  else
    set guifont=Menlo:h12
    set transparency=2  " Only OS X supports it :(
  endif
else
  set guifont=Consolas:h10
  set background=light
endif

" Settings
set spell spelllang=en,it spellfile=.spell.utf-8.add

