" Vim-Sessionist

" Derive the session name from the session path
function! Sessionist#SetSessionName()
	if exists("g:current_session_path")
		let g:current_session = substitute(g:current_session_path, '.*\/\(\f\+\)\.session$', '\1', 'g')
	endif
endfunction

" Derive the session path from the session name
function! Sessionist#SetSessionPath()
	if exists("g:current_session")
		" Strip session name out of path and remove extension
		let g:current_session_path = g:sessionist_directory . "/" . g:current_session . ".session"
	endif
endfunction

" Name of current session
function! Sessionist#CurrentSession()
	if exists("g:current_session_path") && !exists("g:current_session")
		call Sessionist#SetSessionName()
	endif

	if exists("g:current_session")
		echo g:current_session
	else
		echo "No session exists."
	endif
endfunction

" List sessions in sessionist directory
function! Sessionist#ListSessions()
	let sessions = readdir(g:sessionist_directory, {n -> n =~ '.session$'})
	for session in sessions
		echo session
	endfor
endfunction

" Write session to file
function! Sessionist#MakeSession()
	if !exists("g:current_session_path") || !exists("g:current_session")
		echo "ERROR: unknown session"
	else
		execute "mksession! " . g:current_session_path
		echo g:current_session . " <== Session saved!"
	endif
endfunction

" Load session from file
function! Sessionist#LoadSession()
	if !exists("g:current_session_path") || !exists("g:current_session")
		echo "ERROR: unknown session"
	else
		execute "source " . g:current_session_path
		echo g:current_session . " <== Session loaded!"
	endif

endfunction

" Create new session by entering name
function! Sessionist#NewSession()
	let session_name = input('Enter session-name: ')
	if !empty(session_name)
		let g:current_session = session_name
		call Sessionist#SetSessionPath()
		call Sessionist#MakeSession()
	else
		echo "Empty name entered; not saving session."
	endif
endfunction

" Save existing session
function! Sessionist#SaveSession()
	if !exists("g:current_session") || !exists("g:current_session_path")
		call Sessionist#NewSession()
	else
		call Sessionist#MakeSession()
	endif
endfunction

" Open existing session
function! Sessionist#OpenSession()
	let session_name = input("Enter session-name: ", g:sessionist_directory . "/", "file")
	if !empty(session_name)
		let g:current_session_path = session_name
		call Sessionist#SetSessionName()
		call Sessionist#LoadSession()
	else
		echo "Empty name entered; not opening session."
	endif
endfunction

" Source previous session
function! Sessionist#PreviousSession()
	if v:version >= 703
		execute "source " . g:sessionist_directory . "/prev.session"
	else
		echo "Vim version 7.3+ required to support this feature."
	endif
endfunction

" Automatically save existing session on quitting Vim (overwrites previous one)
function! Sessionist#AutoSave()
	execute "mksession! " . g:sessionist_directory . "/prev.session"
endfunction

" vim: tabstop=2
