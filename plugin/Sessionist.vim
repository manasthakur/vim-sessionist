" Vim-Sessionist

" Exit if Sessionist is already loaded
if exists("g:loaded_Sessionist")
	finish
endif
let g:loaded_Sessionist = 1

if !exists("g:sessionist_directory")
	let g:sessionist_directory = $HOME . '/.vim-sessions'
endif

" Create directory to store sessions
if !isdirectory(g:sessionist_directory)
	silent call mkdir(g:sessionist_directory, "p")
endif

" Call AutoSave() on quitting Vim (for vim versions >= 7.3)
augroup Sessionist
	if v:version >= 703
		autocmd!
		autocmd QuitPre * call Sessionist#AutoSave()
	endif
augroup END

" Variables

if !exists("g:sessionist_new")
	let g:sessionist_new = 'SN'
endif

if !exists("g:sessionist_save")
	let g:sessionist_save = 'SS'
endif

if !exists("g:sessionist_current")
	let g:sessionist_current = 'SC'
endif

if !exists("g:sessionist_previous")
	let g:sessionist_previous = 'SP'
endif

if !exists("g:sessionist_open")
	let g:sessionist_open = 'SO'
endif

if !exists("g:sessionist_list")
	let g:sessionist_list = 'SL'
endif

if !exists("g:sessionist_delete")
	let g:sessionist_delete = 'SD'
endif

" Mappings

"" Create new session
execute 'nnoremap' g:sessionist_new ':call Sessionist#NewSession()<CR>'

"" Save existing session
execute 'nnoremap' g:sessionist_save ':call Sessionist#SaveSession()<CR>'

"" Get name of current session
execute 'nnoremap' g:sessionist_current ':call Sessionist#CurrentSession()<CR>'

"" Restore previous session
execute 'nnoremap' g:sessionist_previous ':call Sessionist#PreviousSession()<CR>'

"" Open session
execute 'nnoremap' g:sessionist_open ':source ' . g:sessionist_directory . '/'

"" List sessions
execute 'nnoremap' g:sessionist_list ':!ls ' . g:sessionist_directory . '<CR>'

"" Delete session
execute 'nnoremap' g:sessionist_delete ':!rm ' . g:sessionist_directory . '/'

