# Vim-Sessionist

Vim supports sessions!! This means you can create project-specific workspaces
(like IDEs), and open the saved workspaces directly. A session encompasses all
open files, the cursor-location within them, and other vim-options set while
creating the session.

`vim-sessionist` is a light-weight wrapper over the session-management commands
in vim. It also automatically saves your session, when you close Vim, and lets
you restore it later.

## Usage

Type the following commands in normal mode:

* Create a new session: SN
* Overwrite current session: SS
* Open a session: SO
* Restore previous session: SP (requires Vim 7.4+)
* Get name of current session: SC
* List existing sessions: SL
* Delete a session: SD

All the keybindings can be changed to suit your needs. Run `:help Sessionist`
post installation for instructions.

## Installation (using [vim-plug](https://github.com/junegunn/vim-plug))

* Add the following line to your `.vimrc`:
    ```
    Plug 'manasthakur/vim-sessionist'
    ```

* Install plugin inside vim:
    ```
    :PlugInstall
    ```

* To update vim-sessionist, run `:PlugUpdate vim-sessionist` inside vim.

Installation with other plugin managers (such as [Vundle](https://github.com/VundleVim/Vundle.vim) and [NeoBundle](https://github.com/Shougo/neobundle.vim)) should also work in the standard way.

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

[Star this repository](https://github.com/manasthakur/vim-sessionist/) on GitHub if you like the tutorial.
Feel free to send bricks and bouquets to `manasthakur17@gmail.com`.

## License

[MIT](LICENSE)

