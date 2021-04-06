## Neovim Simple Config
This is my own Neovim configuration on my Termux.<br>
Features:
* Code Completion with [coc.nvim](https://github.com/neoclide/coc.nvim)
* [Fuzzy Finder](https://github.com/junegunn/fzf) file explorer
* [NERDTree](https://github.com/preservim/nerdtree) plugin
* Keybindings:

|Key|Action|
|--|--|
| `Ctrl-s` | Save |
| `Ctrl-q` | Quit |
| `Ctrl-n` | Nerdtree |
| `Ctrl-C` | Copy |
| `Ctrl-V` | Paste |
| `jk` | back to NORMAL mode |

For other keybinding and mapping, see `settings/maps.vim`

## Installation
You need to clone this repository and copy all the files inside to `~/.config/nvim`.<br>
Or you might wanna using this one liner:
```bash
mkdir -p ~/.config && cd ~/.config && git clone https://github.com/annzc/nvim.git
```

### Ingfo
* got that fancy statusline from this [dotfiles](https://github.com/owl4ce/dotfiles) repo -- Thanks Mr. Harry!
