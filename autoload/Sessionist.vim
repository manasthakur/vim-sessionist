" Save session by entering name
function! Sessionist#SaveSession()
    execute "mksession! $HOME/.vim-sessions/" . input('Enter session-name: ') . ".session"
    echo " <== Session saved!"
endfunction

" List existing sessions
function! Sessionist#ListSessions()
    execute "!basename `ls $HOME/.vim-sessions/*.session`"
endfunction

" Automatically save existing session on quitting Vim (overwrites previous one)
function! Sessionist#AutoSave()
    execute "mksession! $HOME/.vim-sessions/prev.session"
endfunction

