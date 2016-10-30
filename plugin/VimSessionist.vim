" Exit if VimSessionist is already loaded
if exists("g:loaded_VimSessionist")
    finish
endif
let g:loaded_VimSessionist = 1

" Create directory to store sessions
if !isdirectory($HOME."/.vim-sessions")
    silent call mkdir($HOME."/.vim-sessions", "p")
endif

" Call AutoSave() on quitting Vim (for vim versions >= 7.3)
augroup VST
    if v:version >= 703
        autocmd!
    	autocmd QuitPre * call VimSessionist#AutoSave()
	endif
augroup END

command! CtrlPSessionist call ctrlp#init(ctrlp#obsession#id())

" Use SO to open session
nnoremap SO :source $HOME/.vim-sessions/

" Use SS to save sessions
nnoremap SS :call VimSessionist#SaveSession()<CR>

" Use SL to list existing sessions
nnoremap SL :call VimSessionist#ListSessions()<CR>

" Use SD to delete sessions
nnoremap SD :!rm $HOME/.vim-sessions/

" Use SP to restore previous session (for vim versions >= 7.3)
if v:version >= 703
    nnoremap SP :source $HOME/.vim-sessions/prev.session<CR>
endif

" Integrate the documentation
" helptags $HOME/.vim/bundle/VimSessionist/doc/

