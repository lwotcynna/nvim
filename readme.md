## Neovim Simple Config
This is my own Neovim configuration on my Termux.<br>
### Features:

* Code Completion  : [coc.nvim](https://github.com/neoclide/coc.nvim)
* File explorer    : [Fuzzy Finder](https://github.com/junegunn/fzf)
* Folder file Tree : [NERDTree](https://github.com/preservim/nerdtree)
* Plugin Manager   : [Vim-Plug](https://github.com/junegunn/vim-plug)
* Statusline       : [lightline.vim](https://github.com/itchyny/lightline.vim)
* Keybindings:

|Key|Action|
|--|--|
| `Ctrl-s` | Save |
| `Ctrl-q` | Quit |
| `Ctrl-n` | Nerdtree |
| `Ctrl-c` | Copy |
| `Ctrl-v` | Paste |
| `jk` | back to NORMAL mode |

For other keybindings and mappings, see `general/maps.vim`

## Installation
Just clone this repo and copy all files inside into `~/.config/nvim`<br>
Or you might wanna use this one line install command.
```bash
pkg install git -y && git clone https://github.com/annzc/nvim.git && cd nvim && bash install.sh
```
Just type `nvim` and you'll enter Neovim text editor.
### NOTE:
- You can manually install coc-plugins by typing `:CocInstall <coc-plugin>` inside vim session
   > For example if you want to install python completion, just type `:CocInstall coc-python`
- It is recommended to install `coc-marketplace` to easily install any other coc plugins
