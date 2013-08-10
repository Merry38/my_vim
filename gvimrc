" Font
if has("unix")
	let s:uname = system("echo -n \"$(uname)\"")
	if !v:shell_error && s:uname == "Linux"
		set guifont=Ubuntu\ Mono\ 14
	else
		set guifont=Menlo:h12
	endif
endif

" Transparency
set transparency=2

