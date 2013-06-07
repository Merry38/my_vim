if has( "unix" )
	let s:uname = system("echo -n \"$(uname)\"")
	if !v:shell_error && s:uname == "Linux"
		set guifont=UbuntuMono\ 12
	else
		set guifont=Menlo:h12
	endif
endif
