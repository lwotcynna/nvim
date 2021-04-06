if empty(glob('~/.config/nvim/autoload/plug.vim'))
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugs')

    " Themes
    Plug 'joshdick/onedark.vim'

    " VS Code like
    Plug 'neoclide/coc.nvim'

    " Auto pairs for (), [], "", '', {}
    Plug 'jiangmiao/auto-pairs'

    " Statusline theme
    "Plug 'vim-airline/vim-airline'
    "Plug 'itchyny/lightline.vim'

    " for better syntax highlighting
    Plug 'sheerun/vim-polyglot'
    Plug 'uiiaoo/java-syntax.vim' " for java

    " FUZZY FINDER file finder
    Plug 'junegunn/fzf'

    " NERDTree file explorer
    Plug 'preservim/nerdtree'

    " Dev icons displays file's icons 
    Plug 'ryanoasis/vim-devicons'

    " git tracker plugin
    Plug 'airblade/vim-gitgutter'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
