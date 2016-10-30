" Save session by entering name
function! VimSessionist#SaveSession()
    execute "mksession! $HOME/.vim-sessions/" . input('Enter session-name: ') . ".session"
    echo " <== Session saved!"
endfunction

" List existing sessions
function! VimSessionist#ListSessions()
    execute "!basename `ls $HOME/.vim-sessions/*.session`"
endfunction

" Automatically save existing session on quitting Vim (overwrites previous one)
function! VimSessionist#AutoSave()
    execute "mksession! $HOME/.vim-sessions/prev.session"
endfunction

