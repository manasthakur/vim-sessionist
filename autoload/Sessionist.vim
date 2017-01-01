" Vim-Sessionist

" Create new session by entering name
function! Sessionist#NewSession()
	let session_name = input('Enter session-name: ')
	if !empty(session_name)
		let g:current_session = session_name
		execute "mksession! " . g:sessionist_directory . "/" . session_name . ".session"
		echo " <== Session saved!"
	else
		echo "Empty name entered; not saving session."
	endif
endfunction

" Save existing session
function! Sessionist#SaveSession()
	if exists("g:current_session")
		execute "mksession! " . g:sessionist_directory . "/" . g:current_session . ".session"
		echo g:current_session . " <== Session saved!"
	else
		call Sessionist#NewSession()
	endif
endfunction

" Name of current session
function! Sessionist#CurrentSession()
	if exists("g:current_session")
		echo g:current_session
	else
		echo "No session exists."
	endif
endfunction

" Source previous session
function! Sessionist#PreviousSession()
if v:version >= 703
	execute "source " . g:sessionist_directory . "/prev.session"
else
	echo "Vim version 7.4+ required to support this feature."
endif
endfunction

" Automatically save existing session on quitting Vim (overwrites previous one)
function! Sessionist#AutoSave()
	if exists("g:current_session")
		execute "mksession! " . g:sessionist_directory . "/" . g:current_session . ".session"
	endif
    execute "mksession! " . g:sessionist_directory . "/prev.session"
endfunction

