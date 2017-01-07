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
* Restore previous session: SP (requires Vim 7.3+)
* Get name of current session: SC
* List existing sessions: SL
* Delete a session: SD

All the keybindings can be changed to suit your needs. Run `:help Sessionist`
post installation for instructions.

## Installation

Use your favorite plugin-manager, or install manually.
Refer [this article](https://gist.github.com/manasthakur/ab4cf8d32a28ea38271ac0d07373bb53)
for general help on managing plugins in Vim.

[Star this repository](https://github.com/manasthakur/vim-sessionist/) on GitHub if you like the plugin.
Feel free to send bricks and bouquets to `manasthakur17@gmail.com`.

## License

[MIT](LICENSE)

