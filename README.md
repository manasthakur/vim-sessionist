# vim-sessionist

Vim supports sessions!! This means you can create project-specific workspaces (like IDEs), and open the saved workspaces directly. A session encompasses all open files, the cursor-location within them, and other vim-options set while creating the session.

`vim-sessionist` is a light-weight wrapper over the session-management commands in vim. It also automatically saves your last session.

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
    Plug 'manasthakur/vim-sessionist'
    ```

* Install plugin inside vim:
    ```
    :PlugInstall
    ```

* Access the help file by typing `:help vim-sessionist` in vim.

* To update vim-sessionist, run `:PlugUpdate vim-sessionist` inside vim.

## Installation (using [Vundle](https://github.com/VundleVim/Vundle.vim))

* Add the following line to your `.vimrc`:
    ```
    Plugin 'manasthakur/vim-sessionist'
    ```

* Install plugin inside vim:
    ```
    :PluginInstall
    ```

* Access the help file by typing `:help vim-sessionist` in vim.

* To update vim-sessionist, run `:PluginUpdate vim-sessionist` inside vim.

## Installation (using [pathogen](https://github.com/tpope/vim-pathogen))

* Run the following commands:
    ```
    mkdir -p ~/.vim/bundle
    cd ~/.vim/bundle/
    git clone https://github.com/manasthakur/vimsessionist.git
    ```

* Access the help file by typing `:help vim-sessionist` in vim.

* To update vim-sessionist, run `git pull` inside the directory `~/.vim/bundle/vim-sessionist`.

Installation with other plugin managers (such as [NeoBundle](https://github.com/Shougo/neobundle.vim)) should also work in the standard way.

## Installation (manual):

* Clone this repository
    ```
    git clone https://github.com/manasthakur/vim-sessionist.git
    ```

* Move vim-sessionist to the vim bundle directory
    ```
    mv vim-sessionist $HOME/.vim/bundle/
    ```
(NOTE: Create `.bundle` directory if it does not exist.)

* Add the following lines to your `.vimrc`:
    ```
    source $HOME/.vim/bundle/vim-sessionist/autoload/vim-sessionist.vim
    source $HOME/.vim/bundle/vim-sessionist/plugin/vim-sessionist.vim
    ```

* To integrate vim-sessionist's documentation into vim:

    - Copy the documentation file to `.vim/doc` (create if does not exist):
        
        ```
        cp $HOME/.vim/bundle/vim-sessionist/doc/vim-sessionist.txt $HOME/.vim/doc/
        ```

    - Add the following line to your `.vimrc`:
        
        ```
        helptags $HOME/.vim/doc
        ```

* To update vim-sessionist, just pull the repository again:
    ```
    cd $HOME/.vim/bundle/vim-sessionist
    git pull
    ```

Feel free to ping me for any queries/suggestions.

