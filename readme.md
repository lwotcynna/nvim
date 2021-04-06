## Neovim Simple Config
This is my own Neovim configuration on my Termux.<br>
### Features:
* Code Completion with [coc.nvim](https://github.com/neoclide/coc.nvim)
* [Fuzzy Finder](https://github.com/junegunn/fzf) file explorer
* [NERDTree](https://github.com/preservim/nerdtree) plugin
* [Vim-Plug](https://github.com/junegunn/vim-plug) plugin manager 
* Keybindings:

|Key|Action|
|--|--|
| `Ctrl-s` | Save |
| `Ctrl-q` | Quit |
| `Ctrl-n` | Nerdtree |
| `Ctrl-c` | Copy |
| `Ctrl-v` | Paste |
| `jk` | back to NORMAL mode |

For other keybinding and mapping, see `settings/maps.vim`

## Installation
First, install Neovim on Termux
```bash
$ pkg install neovim -y
```
Install NodeJS (to make coc.nvim work)
```bash
$ pkg install nodejs
```
Then you need to clone this repository and copy all the files inside to `~/.config/nvim`.<br><br>
Or you might wanna use this one liner:
```bash
pkg install git -y && mkdir -p ~/.config && cd ~/.config && git clone https://github.com/annzc/nvim.git
```
Just type `nvim` and you'll enter Neovim text editor.
### NOTE:
- It will automatically install missing vim-plugins on startup.
- You can manually install coc-plugins by typing `:CocInstall <coc-plugin>` inside vim session
   > For example if you want to install python completion, just type `:CocInstall coc-python`
- It is recommended to install `coc-marketplace` to easily install any other coc plugins
### Ingfo
* got that fancy statusline from this [dotfiles](https://github.com/owl4ce/dotfiles) repo -- Thanks Mr. Harry!
