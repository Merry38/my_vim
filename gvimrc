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
	endif
endif

" Settings
set transparency=2
set spell spelllang=en,it spellfile=.spell.utf-8.add

