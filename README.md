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

## Installation (using [vim-plug](https://github.com/junegunn/vim-plug))

* Add the following line to your `.vimrc`:
    ```
    Plug 'manasthakur/VimSessionist'
    ```

* Install plugin inside vim:
    ```
    :PlugInstall
    ```

* Access the help file by typing `:help VimSessionist` in vim.

* To update VimSessionist, run `:PlugUpdate VimSessionist` inside vim.

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

## Installation (using [pathogen](https://github.com/tpope/vim-pathogen))

* Run the following commands:
    ```
    mkdir -p ~/.vim/bundle
    cd ~/.vim/bundle/
    git clone https://github.com/manasthakur/vimsessionist.git
    ```

* Access the help file by typing `:help VimSessionist` in vim.

* To update VimSessionist, run `git pull` inside the directory `~/.vim/bundle/VimSessionist`.

Installation with other plugin managers (such as [NeoBundle](https://github.com/Shougo/neobundle.vim)) should also work in the standard way.

## Installation (manual):

* Clone this repository
    ```
    git clone https://github.com/manasthakur/VimSessionist.git
    ```

* Move VimSessionist to the vim bundle directory
    ```
    mv VimSessionist $HOME/.vim/bundle/
    ```
(NOTE: Create `.bundle` directory if it does not exist.)

* Add the following lines to your `.vimrc`:
    ```
    source $HOME/.vim/bundle/VimSessionist/autoload/VimSessionist.vim
    source $HOME/.vim/bundle/VimSessionist/plugin/VimSessionist.vim
    ```

* To integrate VimSessionist's documentation into vim:

    - Copy the documentation file to `.vim/doc` (create if does not exist):
        
        ```
        cp $HOME/.vim/bundle/VimSessionist/doc/VimSessionist.txt $HOME/.vim/doc/
        ```

    - Add the following line to your `.vimrc`:
        
        ```
        helptags $HOME/.vim/doc
        ```

* To update VimSessionist, just pull the repository again:
    ```
    cd $HOME/.vim/bundle/VimSessionist
    git pull
    ```

Feel free to ping me for any queries/suggestions.

