" Save session by entering name
function! VimSessionist#SaveSession()
    execute "mksession! $HOME/.vim-sessions/" . input('Enter session-name: ') . ".session"
    echo " <== Session saved!"
endfunction

" List existing sessions
function! VimSessionist#ListSessions()
    execute "!basename `ls $HOME/.vim-sessions/*.session`"
endfunction

function! ctrlp#obsession#init()
    let flist = glob(fnamemodify('$HOME/.vim-sessions', ':p').'*.vim', 0, 1)
    let flist = map(flist, "fnamemodify(v:val, ':t:r')")
    let flist = map(flist, "substitute(v:val, '%', '/', 'g')")
    return flist
endfunction

" Automatically save existing session on quitting Vim (overwrites previous one)
function! VimSessionist#AutoSave()
    execute "mksession! $HOME/.vim-sessions/prev.session"
endfunction

