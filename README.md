# VimSessionist

Vim supports sessions!! This means you can create project-specific workspaces (like IDEs), and open the saved workspaces directly. A session encompasses all open files, the cursor-location within them, and other vim-options set while creating the session.

`VimSessionist` is a light-weight wrapper over the session-management commands in vim. It also automatically saves your last session.

## Features:

* Save a vim session (SS)
* Open a vim session (SO) -- with TAB-completion support
* Restore previous session (SP) -- automatically saved
* List existing sessions (SL)
* Delete existing sessions (SD)

### IMPORTANT NOTES: 

* You need vim with a version 7.3 or higher to use this wrapper without any errors.
* Use the commands in Normal mode without pressing "Enter".

## Installation (using [Vundle](https://github.com/VundleVim/Vundle.vim))

* Add the following line to your `.vimrc`:
    ```
    Plugin 'manasthakur/VimSessionist'
    ```

* Install plugin inside vim:
    ```
    :PluginInstall
    ```

* Access the help file by typing `:help VimSessionist` in vim.

* To update VimSessionist, run `:PluginUpdate VimSessionist` inside vim.

Installation with other plugin managers (such as [pathogen](https://github.com/tpope/vim-pathogen)) should also work in the standard way.

## Installation (manual):

* Clone this repository
    ```
    git clone https://github.com/manasthakur/VimSessionist.git
    ```

* Move VimSessionist to the vim bundle directory
    ```
    mv VimSessionist ~/.vim/bundle/
    ```
(NOTE: Create `.bundle` directory if it does not exist.)

* Add the following lines to your `.vimrc`:
    ```
    source ~/.vim/bundle/VimSessionist/autoload/VimSessionist.vim
    source ~/.vim/bundle/VimSessionist/plugin/VimSessionist.vim
    ```

* To integrate VimSessionist's documentation into vim:

    - Copy the documentation file to `.vim/doc` (create if does not exist):
        
        ```
        cp ~/.vim/bundle/VimSessionist/doc/VimSessionist.txt ~/.vim/doc/
        ```

    - Add the following line to your `.vimrc`:
        
        ```
        helptags ~/.vim/doc
        ```

* To update VimSessionist, just pull the repository again:
    ```
    cd ~/.vim/bundle/VimSessionist
    git pull
    ```

Feel free to ping me for any queries/suggestions.

