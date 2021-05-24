" !! BETTER NOT TO CHANGE THE ORDER !!

" ## plugins ##
source $HOME/.config/nvim/general/plugins.vim

" ## uncomment your desired colorscheme, restart needed ##
"{
"source $HOME/.config/nvim/themes/ayu.vim
source $HOME/.config/nvim/themes/gruvbox.vim
"source $HOME/.config/nvim/themes/onedark.vim
"}

source $HOME/.config/nvim/general/coc.vim
source $HOME/.config/nvim/general/indentline.vim
source $HOME/.config/nvim/general/maps.vim
source $HOME/.config/nvim/general/sets.vim
source $HOME/.config/nvim/general/lightline.vim

" ## python environment ##
let g:python3_host_prog =
  \ '/data/data/com.termux/files/usr/bin/python'
