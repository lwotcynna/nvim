" F keys
" Display Termux F keys in ~/.termux/termux.properties > extra-keys
" Quick write session with F2
map <F2> :mksession! ~/.vim_session<cr>
" And load session with F3
map <F3> :source ~/.vim_session<cr>

" Fix indentation
map <F7> gg=G<C-o><C-o>
" Toggle auto change directory
map <F8> :set autochdir! autochdir?<CR>

" Toggle display NERDTree
map <C-n> :NERDTreeToggle<CR>

" Beginning and end of line
imap <C-a> <home>
imap <C-e> <end>
cmap <C-a> <home>
cmap <C-e> <end>

" Control-S Save
nmap <C-S> :w<cr>
vmap <C-S> <esc>:w<cr>
imap <C-S> <esc>:w<cr>
" Save + back into insert
" imap <C-S> <esc>:w<cr>a

" Control-Q exit
nmap <C-Q> :q<cr>
vmap <C-Q> <esc>:q<cr>
imap <C-Q> <esc>:q<cr>
" force exit

" Control-C Copy in visual mode
vmap <C-C> y

" Control-V Paste in insert and command mode
imap <C-V> <esc>pa
cmap <C-V> <C-r>0

" Window Movement
nmap <M-h> <C-w>h
nmap <M-j> <C-w>j
nmap <M-k> <C-w>k
nmap <M-l> <C-w>l

" Resizing
nmap <C-M-H> 2<C-w><
nmap <C-M-L> 2<C-w>>
nmap <C-M-K> <C-w>-
nmap <C-M-J> <C-w>+

" Insert mode movement
imap <M-h> <left>
imap <M-j> <down>
imap <M-k> <up>
imap <M-l> <right>
imap <M-f> <C-right>
imap <M-b> <C-left>

" Alt-m for a new line underneath in insert mode
imap <M-m> <esc>o

" Cycle windows
nmap <M-o> <C-W>w
vmap <M-o> <C-W>w
tmap <M-o> <esc><C-W>w
imap <M-o> <esc><C-W>w

" Command mode history
cmap <M-p> <up>
cmap <M-n> <down>
cmap <M-k> <up>
cmap <M-j> <down>

" Highlight search dissapeared
nnoremap <silent><esc> :noh<cr><esc>

" Back to normal mode from insert
inoremap jk <esc>
inoremap JK <esc>

" quick edit init.vim
nnoremap <silent>,init :tabe ~/.config/nvim/init.vim<cr>
nnoremap <silent>,so :so ~/.config/nvim/init.vim<cr>:echo 'sourced'<cr>

" shortcut for creating shebang
inoremap ,she #!/data/data/com.termux/files/usr/bin/

"" buffers handling
" show list of buffers
nnoremap <space>b :buffers<cr>
" switching; H for prev buffer, L for next buffer
nnoremap <silent>H :bp<cr>
nnoremap <silent>L :bn<cr>
" delete buffer
nnoremap <silent>X :bd<cr>

" tab handling prev & next tab
nnoremap zz gT
nnoremap mm gt
